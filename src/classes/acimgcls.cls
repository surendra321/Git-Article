public with sharing class acimgcls {

    public String imgname { get; set; }
    public integer i;
    public integer j;
    public PageReference change() {
        
    
            if(i!=8){
                imgName='img1/pick'+i+'.jpg';
                i++;
            }
            else if(i==8){
                i=1;
            }
            
            
            
            
        
        
         return null;
    }
    
    public acimgcls(){
        i=1;    
        imgName ='img1/pick'+i+'.jpg';
        i=2;
        }
}