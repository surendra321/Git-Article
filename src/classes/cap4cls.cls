public class cap4cls {

    public cap4cls(ApexPages.StandardController controller) {

    }


    public PageReference saveacc() {
        update acc;
        PageReference pr = new ApexPages.StandardController(acc).view();
        return pr;
    }

   public Account acc;
    
   public cap4cls(){
        acc=[select id,phone,name,type,BillingCity from Account where id=:Apexpages.currentpage().getparameters().get('id')];
    }
   
   public Account getAccount(){
       return acc;
   } 
       
}