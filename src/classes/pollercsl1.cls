public with sharing class pollercsl1 {

public String imageName { get; set; }    
    public integer i;
    public PageReference change() {
        if(i!=7){
        imageName='images/pic'+i+'.jpg';
        i++;
        }
        return null;
    }

    
    public pollercsl1 (){
        i=1;    
        imageName ='images/pic'+i+'.jpg';
        i=2;
    }

}