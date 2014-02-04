public class Point{
    integer x1;
    integer y1;
    integer x2;
    integer y2;
  
    public Point(integer x1,integer y1){
        this.x1=x1;
        this.y1=y1;
    }
    
    public void setValues(integer x,integer y,integer m,integer n){
        x1 = x;
        y1 = y;
        x2 = m;
        y2 = n;
    }
    
    public decimal distance(){
        integer a=x2-x1;
        integer b=y2-y1;
        decimal dist = math.sqrt(math.pow(a,2)+math.pow(b,2));
        return dist;
    }
    
    public decimal slope(){
        decimal slp=(y2-y1)/(x2-x1);
        return slp;
    }    
       
    public void getValues(){
        System.debug('this point is  at('+x1+','+y1+')');
    }
}