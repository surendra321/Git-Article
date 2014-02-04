public class multicontactrelationship {

    public multicontactrelationship(ApexPages.StandardController controller) {

    }
    
    public list<contact> conlst{get;set;}
    
    public list<contact> getconrec(){
        //contact cn=new contact();
        
        conlst=[select id,name,phone,Email from contact where Accountid=:ApexPages.currentPage().getparameters().get('id')];
        return conlst;
    }

}