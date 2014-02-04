public class Height{
    integer feet;
    integer inch;
    
    public void setValues(integer f,integer i){
        feet=f;
        inch=i;
    }
   
    public void add(height h){
        integer n=(this.feet*12+this.inch)+(h.feet*12+h.inch);
        integer feet1=n/12;
        integer inch1=math.mod(n,12);
        system.debug('after adding the height is:'+feet1+'.'+inch1);
    
    }  
        
    public void sub(height h){
        integer n=math.abs((this.feet*12+this.inch)-(h.feet*12+h.inch));
        integer feet1=n/12;
        integer inch1=math.mod(n,12);
        system.debug('after adding the height is:'+feet1+'.'+inch1);
   }
}