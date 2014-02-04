public with sharing class stepinforgotpswcls {
    
    public suri__authentication__c ath;
    
    public PageReference submit() {
        
        if(email!=null){
            ath=[select id,suri__password__c from suri__authentication__c where suri__email__c=:email];
        }
        else if(uname!=null){
            ath=[select id,suri__password__c from suri__authentication__c where suri__username__c=:uname];
        }
         
        List<String> lstemails = new List<String>();
        lstemails.add(email);       
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setSubject('Your password enclosed');
        mail.setPlainTextBody('Dear Customer, Your password for logging into our site is '+ath.suri__password__c);        
        mail.setToAddresses(lstemails);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
       ApexPages.Message myMsg = new ApexPages.Message(ApexPAges.severity.Info,'Email has been sent successfully');
       ApexPAges.addMEssage(myMsg);
         
        
        
        
        return null;
    }


    public String uname { get; set; }

    public String email { get; set; }
}