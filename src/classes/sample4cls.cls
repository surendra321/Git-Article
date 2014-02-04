public class sample4cls {
    public employees__c emp{get;set;}
    public Account objacc{get;set;}
    public sample4cls(ApexPages.StandardController controller) {
    
    emp = (employees__c)controller.getRecord();
    System.debug('===================>'+emp);
    //System.debug('===================>'+this.emp);
    
    }
    public void somemethod(){
    Account objacc=[select name from account where id=:emp.Account__c limit 1];
    System.debug('========>>>>>>'+objacc);
    }

}