public class Demo{
    
    integer n=11;
    final integer m=0;
   integer l;
       
    public void ss(){
 
      try{
          
          if(n==10){
          throw new BalanceException();
         }
          System.debug('hi');
          System.assert(n>m);
          System.debug('hi ra');
          System.assert(n<m);
          System.debug('hi ra rey');
          
          }
         
        catch(BalanceException e){
         System.debug('this is math problem');
          }
        catch(PrimeException e){
         System.debug('this is infinity problem');
         }
        finally{
         System.debug('this is math problem finally');
         }
             
         
    
       
        
    }
}