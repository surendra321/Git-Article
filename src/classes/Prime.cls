public class Prime{
    integer num;
    integer counter=0;
    public void setValues(integer n){
        num=n;
     
    }
    public void prime1(){
    
        for(integer i=2;i<=num/2;i++){
            
            if(math.mod(num,i)==0){
            counter++;
            }
            }
            
            if(counter==0)
            System.debug(num+'is prime');
            else
            System.debug(num+' is not prime');
    }
}