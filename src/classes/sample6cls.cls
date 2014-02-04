public class sample6cls {
    public employees__c emp{get;set;}
    public Account objacc{get;set;}
    
    public sample6cls(ApexPages.StandardController controller) {
    
        emp = (employees__c)controller.getRecord();
        System.debug('===================>'+emp);
        //System.debug('===================>'+this.emp);
    
    }
    public void somemethod(){
     objacc=[select name from account where id=:emp.Account__c limit 1];
    System.debug('========>>>>>>'+objacc);
    }

}