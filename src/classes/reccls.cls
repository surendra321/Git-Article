public with sharing class reccls {
    
    public string recid{get; set;}
    
    public PageReference delrecord() {
        System.debug('------'+recid);
        Account acc=[select id,name from Account where id=:recid];
        delete acc;
        PageReference pr=new PageReference('/apex/jscript6');
        pr.setredirect(true);
        return pr;
    }


    public list<contact> clist { get; set; }

    public  list<Account> alist{ get; set; }

    public list<book__c> blist{ get; set; }
    
    public reccls(){
        blist=[select name,price__c,author__c,edition__c from book__c];
        alist=[select name,phone from Account];
        clist=[select name,mobilephone from contact];
        }
    
}