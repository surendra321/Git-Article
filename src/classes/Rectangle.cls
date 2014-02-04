public class Rectangle {

    public Rectangle() {

    }

    integer length;
    integer breadth;
    
    integer perimeter;
    public Rectangle(integer len,integer br){
       length=len;
       breadth=br;
      }
    public void setValues(integer len,integer br){
       length=len;
       breadth=br;
       
     }
    public integer area(){
    integer area=length*breadth;
    return area;
    }
    public integer perimeter(){
    integer peri=2*(length+breadth);
    return peri;
    }
    public void getValues(){
        
         System.debug('length is:'+length);
         System.debug('breadth is:'+breadth);
         
    }
    }