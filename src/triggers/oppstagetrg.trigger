trigger oppstagetrg on Opportunity (before update) {
    opportunity op=trigger.new[0];
    Account acc=[select id from Account where id=:op.Accountid];
    contact con=[select email from contact where accountid=:acc.id ];
   
    if(String.valueof(op.suri__invoicedate__c)==String.valueof(date.today()) ){
        
        
        List<String> lstemails = new List<String>();
        lstemails.add(con.email);       
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setSubject('u hav to pay some amount own');
        mail.setPlainTextBody('Dear Customer, Your account is closed 2day onwird you r the customer for my companyy');        
        mail.setToAddresses(lstemails);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
       
       //op.suri__status__c = 'mail sent';
       
    
    }
    
    

}