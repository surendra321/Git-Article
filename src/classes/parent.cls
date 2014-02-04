public virtual class parent{
    protected integer par_mem1;
    protected integer par_mem2=10;
    
    public void setValues(integer pm1){
        par_mem1=pm1;
        
    }  
    
    public virtual integer parent1(){
        System.debug('hi perant');
        return par_mem2;
    
    } 
    
   
    
    public virtual void getValues(){
        System.debug(par_mem1);
        }

}