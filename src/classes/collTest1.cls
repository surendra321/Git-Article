public class collTest1{
    public Static testMethod void main(){
        
        list<integer> student_marks=new list<integer>();
            student_marks.add(10); 
            student_marks.add(20);
            student_marks.add(30);
            student_marks.add(40);
            student_marks.add(50);
            student_marks.add(60);
            student_marks.add(70);
            student_marks.add(80);
            student_marks.add(90);
            system.debug(student_marks);
        
        set<integer> student_no=new set<integer>();
            student_no.add(1);    
            student_no.add(15);
            student_no.add(25);
            student_no.add(35);
            student_no.add(45);
            student_no.add(55);
            system.debug(student_no);
        
        for(integer no:student_no){
            
            student_marks.add(no);
            system.debug(no);
        }
        
        
        system.debug(student_marks);
        
        for(integer n:student_marks){
           // student_marks.add(n);
            system.debug(n);
        }
         
      
      /* student_marks.add(70);
        student_marks.add(80);
        student_marks.add(90);*/
        student_no.remove(2);
        student_marks.remove(2);
        system.debug(student_no);
        system.debug(student_marks);
        
}
}