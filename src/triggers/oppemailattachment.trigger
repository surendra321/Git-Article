trigger oppemailattachment on Opportunity (after update) {
    
    opportunity op=trigger.new[0];
    
     Account acc=[select id from Account where id=:op.Accountid];
    contact con=[select email from contact where accountid=:acc.id ];
    
    if(op.amount==123){
        
        List<String> lstemails = new List<String>();
        lstemails.add(con.email);
    
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setSubject('u hav to pay some amount own');
        mail.setPlainTextBody('Dear Customer, Your account is closed 2day onwird you r the customer for my companyy');        
        mail.setToAddresses(lstemails);
       // Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    
    
    
    
      //Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
       
       
       
      //Set email file attachments
        List<Messaging.Emailfileattachment> fileAttachments = new List<Messaging.Emailfileattachment>();
        for (Attachment a : [select Name, Body, BodyLength from Attachment where ParentId = :op.Id])
        {
        // Add to attachment file list
        Messaging.Emailfileattachment efa = new Messaging.Emailfileattachment();
        efa.setFileName(a.Name);
        efa.setBody(a.Body);
        fileAttachments.add(efa);
        }
        mail.setFileAttachments(fileAttachments);
      //Send email
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
       

        
    }

}