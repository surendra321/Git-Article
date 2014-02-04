public with sharing class stepinhomecls {

    public String stepintemplate { get; set; }

    public PageReference forgotpsw() {
        
       PageReference pf=new PageReference('/apex/stepinforgotpsw');  
        return pf;
    }

    public PageReference newusr() {
        PageReference pf=new PageReference('/apex/stepinregst');  
        return pf;
    }

    public list<suri__authentication__c> lst{set;get;}
    pagereference pf;
    public PageReference login() {
    
      lst=[select suri__username__c,suri__password__c from  suri__authentication__c where suri__username__c=:uname limit 1];
          if(lst.size()>0){
              if(lst[0].suri__password__c==psw){
               PageReference pf=new PageReference('/apex/stepinhome1');  
                   return pf; 
              }
              else{
               System.debug('hiiiiiiiiiiii');
               showyourmessage('Wrong PassWord...') ;
               return null;
            }

              
          }
          else
        {
          showyourmessage('UserName not found...') ;  
        }
          
        return null;
    }
    
    
     public void showyourmessage(string givenmessage){
        apexpages.message msg=new apexpages.message(apexpages.severity.INFO,givenmessage);
        apexpages.addmessage(msg);
        
        }

    public String psw { get; set; }

    public String uname { get; set; }

    public PageReference change() {
         if(i!=5){
            imgName='stepinimg/pick'+i+'.jpg';
            i++;
        }
        else if(i==5){
            i=1;
        }
        
        return null;
    }

    public integer i;
    public string imgname{get;set;}
    public stepinhomecls(){
        i=1;
        imgname='stepinimg/pick'+i+'.jpg';
        i=2;
    }
}