public with sharing class wrcls1 {

    public class employee{
        public integer eno{set;get;}
        public String ename{set;get;}
        
        public Employee(integer en,string enm){
            eno=en;
            ename=enm;
        }
        }
        
    public list<employee> elst{get;set;}
    public wrcls1(){
    elst=new list<employee>();
    
    elst.add(new employee(323,'suri'));
    elst.add(new employee(322,'sun3'));
    elst.add(new employee(324,'sun2'));
    elst.add(new employee(325,'sun1'));
    
    
    }  
     
            
            
         
}