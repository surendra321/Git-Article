public class inlineeditsupporttag1cls {
    public contact con1 = new contact();
    public inlineeditsupporttag1cls(ApexPages.StandardController controller) {
        this.con1 = (contact)controller.getRecord();    
    }
    
    public pagereference save(){
        contact con = [select firstname,lastname,phone,LeadSource,Email,AssistantPhone,accountid,Fax,MobilePhone,OtherPhone,Department,AssistantName,Birthdate,HomePhone from contact where id =: con1.id];
        con.firstname = con1.firstname;
        con.lastname = con1.lastname;
        con.phone = con1.phone;
        con.accountid = con1.accountid;
        con.LeadSource = con1.LeadSource;
        con.Email = con1.Email;
        con.AssistantPhone = con1.AssistantPhone;
        con.Fax = con1.Fax;
        con.MobilePhone = con1.MobilePhone;
        con.Department = con1.Department;
        con.AssistantName = con1.AssistantName;
        con.Birthdate = con1.Birthdate;
        con.HomePhone = con1.HomePhone;        
        update con;
        pagereference pg = new pagereference('/{!con.id}');
        return pg;
    }

}