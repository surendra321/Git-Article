public with sharing class wrdepcls {

    public boolean bool { get; set; }

   


    public string accid { get; set; }

    public list<selectoption> conitem { get; set; }

    public list<selectoption> accitem { get; set; }
    
    public wrdepcls(){
        bool=true;
        accitem=new list<selectoption>();
        list<account> alst=[select id,name from Account];
        
        for(account a:alst){
            accitem.add(new selectoption(a.id,a.name));
            }
   }    
   
     public PageReference show() {
         bool=false;
         System.debug('----------------------------->'+accid);
         conitem=new list<selectoption>();
         list<contact> clst=[select id,name from contact where accountid=:accid];
         
         for(contact c:clst){
             conitem.add(new selectoption(c.id,c.name));
             
         }    
         
         if(conitem.size()>0){
             bool=false;
         }    
        return null;
    } 
    
    static testMethod void main(){
        
        wrdepcls w=new wrdepcls();
         w.show();
         }
    
    
}