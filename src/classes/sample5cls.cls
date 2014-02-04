public class sample5cls {
    case ObjCase;
    ApexPages.StandardController controller1;
    public sample5cls(ApexPages.StandardController controller) {
        this.ObjCase = (case)controller.getRecord();
        controller1=controller; 
    }
    
    public void savecase(){
    controller1.save();
    
    }

}