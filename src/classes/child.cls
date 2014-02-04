public virtual class child extends parent{
    protected integer ch_mem1;
    protected integer ch_mem2;
    
    public virtual void chaild1(){
        System.debug('this is chaild');
        
    }
      
    public virtual  override integer parent1(){
        System.debug('hi chaild');
        par_mem2=20;
        return par_mem2;
    
    } 
      
    public virtual override  void getValues(){
       par_mem1+=19;
        System.debug(par_mem1);
        System.debug(par_mem2);
    }
}