// This trigger will send the notification email to the required user groups
// as soon as the workflow updates the record in the object

trigger sendEmailNotification on suri__MessageTracker__c (after Update) {


// Looping for each record that is being updated
    for(suri__MessageTracker__c objMT : system.Trigger.New) {
// Declartion of variables used within the trigger
        List<Attachment> listAttch = new List<Attachment>();
        List<Case> listC = new List<Case>();
        List<EmailMessage> listEM = new List<EmailMessage>();
        List<EmailMessage> parentMessage = new List<EmailMessage>();
        List<OrgWideEmailAddress> listOWEA = new List<OrgWideEmailAddress>();
        listOWEA = [select Id from OrgWideEmailAddress limit 1];
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
// The trigger will only execute if the value for the field is set to true by
// the workflow
        if(objMT.suri__Sendnotification__c == true) {
// Assinging the Messageid to a variable of data type Id
            Id messageId = objMT.suri__MessageId__c;
// Querying for the content of the Email that Matches the message Id            
            listEM = [select Id, FromName, FromAddress, Subject, TextBody, HtmlBody, HasAttachment, ParentId from EmailMessage where Id = : messageId];
            parentMessage = [select Id from EmailMessage where ParentId = :listEM[0].ParentId ORDER BY CreatedDate ASC];
// Checks if the EmailMessage exists before assign the values to the variables
            if(listEM.size() > 0) {
                listC = [select Id, CaseNumber, OwnerId, Subject from Case where Id = : listEM[0].ParentId];
                if(listC.size() > 0) {
                    listAttch = [select Id, Name, Body, ContentType from Attachment where ParentId = : listEM[0].Id];
                    Messaging.EmailFileAttachment[] mailAttchs = new Messaging.EmailFileAttachment[listAttch.size()];
                    if(listAttch.size() > 0) {
                        for(integer i = 0; i < listAttch.size(); i++) {
                            Messaging.EmailFileAttachment mailAttch = new Messaging.EmailFileAttachment();
                            mailAttch.setFileName(listAttch[i].Name);
                            mailAttch.setBody(listAttch[i].Body);
                            mailAttch.setContentType(listAttch[i].ContentType);
                            mailAttchs[i] = mailAttch;
                        }
                        mail.setFileAttachments(mailAttchs);
                    }
                    
                    string ref; //Uncommented by Anand 05Mar11
                    ref = '<EmailReference.Case.'+ listC[0].CaseNumber +'.@gmail.com>';  //Using a diff ref format 

                    //string[] toAdd = new string[]{'support-watchers@aristanetworks.com'}; //PRODUCTION Emailid
                    string[] toAdd = new string[]{'surendra3888@gmail.com'}; //Sand box Emailid 
                                        
                    mail.setToAddresses(toAdd);
                    mail.setUseSignature(false);
// This section assigns the org wide email address, the contact id for support
// watchers, the visual force template id and the email message id for which the 
// the notification needs to be sent.
                    mail.setOrgWideEmailAddressId(listOWEA[0].ID);
                    mail.setReferences(ref); //Uncommented by Anand 05Mar11 Setting references
                    mail.setSubject('SR ' + listC[0].CaseNumber + ' [' +listC[0].Subject+ ']');
                   if(listEM[0].HtmlBody != null) {
                        mail.setHtmlBody('<b> From Name : </b>' +listEM[0].FromName+ '<br/>' +
                                          '<b> From Address : </b>' +listEM[0].FromAddress+ '<br/>' +
                                          '<b> Subject : </b>' +listEM[0].Subject+ '<br/>' +
                                           +listEM[0].HtmlBody);
                    } else {
                        if(listEM[0].TextBody != null) {
                            mail.setPlainTextBody('From Name : ' +listEM[0].FromName+ '\n' +
                                          'From Address : ' +listEM[0].FromAddress+ '\n' +
                                          'Subject : ' +listEM[0].Subject+ '\n' +
                                           +listEM[0].TextBody);
                        }
                    }
                    Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
                }
            }
        }
    }
}