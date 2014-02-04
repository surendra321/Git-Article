public class demo12 {

     public integer value1{set;get;}
     public integer value2{set;get;}
     public integer res1{set;get;}
     public integer res2{set;get;}
     public integer res3{set;get;}
     //public integer value3{set;get;}
     PageReference pf;
     
     public demo12(){
       value1=value2=res1=res2=res3=0;
       
       // pf=new pagereference('https://c.ap1.visual.force.com/apex/salespage');
      // return pf; 
         }

    public void sum(){
         res1=value1+value2;
         
         }
    
     public void product() {
      res2=value1*value2;  
    }

   
     
     
         
     public void sub() {
        
        res3=value1-value2;
       
    }   
   
    
         
         
}