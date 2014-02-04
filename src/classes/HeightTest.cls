//create test class for Height class
public class HeightTest{
   static testMethod public void testHeight(){
       Height h1=new Height();
       h1.setValues(14,8);
       Height h2=new Height();
       h2.setValues(12,4); 
       h2.add(h1);
       h2.sub(h1);
       
       
             
       }
}