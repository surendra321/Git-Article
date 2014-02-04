public class selectaccext {

    public selectaccext(ApexPages.StandardSetController controller) {
              
        acclst=controller.getselected(); 
        System.debug('============>'+acclst);
    }
    public list<suri__department__c> deplst{set;get;}
    public string accs{set;get;}
    public list<account> acclst{set;get;}
    
    public void sentrec(){
    
         for(account a:acclst){
        
        suri__department__c dep = new suri__department__c();
        dep.suri__dept_name__c  = a.name;
        System.debug('========>'+dep);
        //deplst.add(dep);
       }
        
        //insert deplst;
          
    }
    

}