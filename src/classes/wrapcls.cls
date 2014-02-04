public with sharing class wrapcls {

   public class conwrap{
        public boolean check{get;set;}
        public contact con{get;set;}
        public conwrap(boolean c,contact cn){
            check=c;
            con=cn;
        }
     }   
    
    public list<conwrap> lstcon{set;get;}
    public list<conwrap> selectalllstcon{set;get;}
    
    public wrapcls(){
        lstcon=new list<conwrap>();
        list<contact> contlst=[select id,name,email from contact];
        
        for(contact c1:contlst){
            lstcon.add(new conwrap(false,c1));
        }
    // system.debug('--------------------------------->'+lstcon);   
    }    
        
    public list<contact> selectedlst{set;get;}
      
      public PageReference allselect() {
     System.debug('=============>>>>>>'+lstcon);
        for(conwrap cw:lstcon){
            cw.check=true;
            }
          
        return null;
    }
     public PageReference deleterec() {
       
       selectedlst=new list<contact>();
       
       for(conwrap cw:lstcon){
       
           if(cw.check==true){
               selectedlst.add(cw.con);
           }
       }          
       
       if(selectedlst.size()>0){
               delete selectedlst;
           }
         
       system.debug('--------------------------------->'+lstcon);
       
      pagereference pf=new pagereference('/apex/wrpage'); 
      pf.setredirect(true);
       return pf;
    }
    
    
    
    
                
    
}