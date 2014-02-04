public class selectpick {

    public selectpick(ApexPages.StandardController controller) {

    }
    public string yearvalue{set;get;}
    public boolean yearvalue1{set;get;}
    public boolean yearvalue2{set;get;}
    public boolean yearvalue3{set;get;}
    
    public list<SelectOption> getyearlst(){
     list<SelectOption> option = new list<SelectOption>();
     option.add(new SelectOption('','None'));
     option.add(new SelectOption('1','2010'));
     option.add(new SelectOption('2','2011'));
     option.add(new SelectOption('3','2012'));

     return option;
     }
    
    public void picklist(){
        if(yearvalue=='1'){
            yearvalue1=true;
            yearvalue2=false;
            yearvalue3=false;
            }
            else if(yearvalue=='2'){
            yearvalue1=false;
            yearvalue2=true;
            yearvalue3=false;
            }
            else{
            yearvalue1=false;
            yearvalue2=false;
            yearvalue3=true;
            }
    }
    
    
}