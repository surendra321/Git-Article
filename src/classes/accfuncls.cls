public with sharing class accfuncls {
    public string name{get;set;}
    public PageReference unchangerec() {
        name='suriiiiiiiii';
        return null;
    }

    public PageReference changerec() {
        name='peram surendra';                            
        return null;
    }
        
    public accfuncls(){
        name='surendra';
    }
    
    @istest
    public static void main(){
        accfuncls acf=new accfuncls();
        acf.unchangerec();
        acf.changerec();   
    }
}