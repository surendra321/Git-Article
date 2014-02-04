// Trigger written by surendra. This trigger will insert the message Id of the email 
// message in the MessageTracker object and create a record there

trigger InsertMessageTracker on EmailMessage (after insert) {

// variables declared that are for use within the trigger
    List<suri__MessageTracker__c> listMT = new List<suri__MessageTracker__c>();
    suri__MessageTracker__c objMT = new suri__MessageTracker__c();
    
// Loop for new email messages that are being created
    for(EmailMessage objEM : system.Trigger.New) {
// Assinging the email message Id to a string    
        string emId = objEM.Id;
// This is to check if this message id is already existing in the Message
// tracker object    
        listMT = [select Id from suri__MessageTracker__c where suri__MessageId__c = : emId];
        if(listMT.size() == 0) {
            objMT.suri__MessageId__c = emId;
            insert objMT;
        }
    }
}