public class child1 extends child{
    protected integer ch1_mem1;
    protected integer ch1_mem2;
    
    public override void chaild1(){
        System.debug('this is chiald1');
        System.debug('super value'+super.parent1());
    }
        
    public override void getValues(){
        System.debug(ch1_mem1); 
        //System.debug(ch_mem1);
        //System.debug(par_mem1);
    }
}