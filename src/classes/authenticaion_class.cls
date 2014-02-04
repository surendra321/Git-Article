public class authenticaion_class {

    PageReference pf;
    public string uname{set;get;}
    public string psw{set;get;}
    
    
    
    public void poller() {
        showyourmessage('your time is over ');
    }

    public void showyourmessage(string givenmessage){
        apexpages.message msg=new apexpages.message(apexpages.severity.INFO,givenmessage);
        apexpages.addmessage(msg);
        
        }
    
    
    public PageReference newuser() {
       pf=new PageReference('https://ap1.salesforce.com/apex/newuser');
        return pf;
    }
    
        list<authentication__c> box;

    public PageReference login() {
       
       box=new list<authentication__c>([select username__c,password__c from authentication__c where username__c=:uname limit 1]);
       
       if(box.size()>0){
       
           if(box[0].password__c==psw){
           pf=new pagereference('https://ap1.salesforce.com/apex/healthcarepage');
           return pf;
           }
           else{
               showyourmessage('wrong password try again');
               return null;
               }
           
               
           }
           else{
               showyourmessage('hello user is not match');
               return null;
               }
       
       
       
       
       
       
       
    }
    
}