public class Employee{
    integer empid;
    string empname;
    integer sal;
    string desig;
    
    public void setValues(integer eid,string en,integer s,string d){
        empid=eid;
        empname=en;
        sal=s;
        desig=d;
    }
    
    public void bonus(integer hike){
        sal=sal+(sal*hike)/100;
    }
    
    public void designation(decimal exp){
        
        if(exp<=2){
            desig='software engineer';
        }
        
        else if(exp<=4){
            desig='Program Analyst';
        }
        
        else if(exp<=6){
            desig='team leader';
        }
        
        else if(exp<=8){
            desig='Program manager';
        }
                   
    }
    
   public void getValues(){
        System.debug('sal after getting bonus is:'+sal);
        
        System.debug('DESIGNATION  is:'+desig);
    }
}