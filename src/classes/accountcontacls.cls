public class accountcontacls{
    List<Account> lstaccount=[select id,name,phone,type from account];
    List<Contact> lstcontact=[select id,name from contact];
    wrapercls wraperobj;
    public list<wrapercls> lstwraper=new List<wrapercls>();
    public List<wrapercls> getwraperlst(){
            if(lstaccount.size()<lstcontact.size()){
                    for(integer i=0;i<lstaccount.size();i++){
                        wraperobj=new Wrapercls();
                        wraperobj.act=lstaccount[i];
                        wraperobj.cont=lstcontact[i];
                        lstwraper.add(wraperobj);                    
                    }
             }
             else{
                     for(integer i=0;i<lstcontact.size();i++){
                        wraperobj=new Wrapercls();
                        wraperobj.act=lstaccount[i];
                        wraperobj.cont=lstcontact[i];
                        lstwraper.add(wraperobj);                    
                    }           
             
             }
             return lstwraper;  
    
    }
    
    public class wrapercls{
        public Account act{get;set;}
        public Contact cont{get;set;}
           
    }
    @istest
    public static void main(){
        accountcontacls accc=new accountcontacls();
        integer i=0;
        list<Account> lstaccount=new list<Account>();
        Account acc=new Account(name='steadfast', phone = '919032350010' , type='Prospect');
        
        lstaccount.add(acc);
        insert lstaccount;
        list<Contact> lstcontact=new list<Contact>();
        Contact con=new Contact(lastname='prakash');     
        Contact con1=new Contact(lastname='prakash1');        
        lstcontact.add(con);
        lstcontact.add(con1);
        insert lstcontact;
        accc.getwraperlst();
        wrapercls wc =new wrapercls();    
    }


}