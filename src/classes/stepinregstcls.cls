public with sharing class stepinregstcls {

    public String occup { get; set; }

    public String adds { get; set; }

    public String email { get; set; }
    public String uname{get;set;}
    public String password{get;set;}
    public String fname{get;set;}
    public String lname{get;set;}
    public integer mobile{get;set;}
   /* public void submit(){
        authentication__c a=new authentication__c();
        a.UserName__c=uname;
        a.Password__c=password;
        insert a;       
    }*/
    public Pagereference Submit() {
        authentication__c a=new authentication__c();
        a.suri__username__c=uname;
        a.suri__password__c=password;
        a.suri__firstname__c=fname;
        a.suri__lastname__c=lname;
        a.suri__phone_no__c = mobile;
        a.suri__email__c=email;
        a.suri__address__c=adds;
        a.suri__occupation__c=occup;
        insert a;   
        PageReference pageRef= new PageReference('/apex/stepinsucces');
            pageRef.setredirect(false);
            return pageRef;     
    }
    public PageReference Home(){
            PageReference pageRef= new PageReference('/apex/stepinhome');
            pageRef.setredirect(false);
            return pageRef;     
    }

}