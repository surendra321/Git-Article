public class nextclass {
    pagereference pf;
    
    public nextclass(ApexPages.StandardController controller) {

    }
    
    public pagereference next(){
        pf=new pagereference('https://ap1.salesforce.com/apex/nextpage');
        return pf;
    }
}