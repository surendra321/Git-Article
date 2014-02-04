public class generatePDFcls1 {
    
    public String QuoteName{set;get;}
    public date ExpirationDt{set;get;}
    public String Accountname{set;get;}
    public String AccountID{set;get;}
    public String BStreet{set;get;}
    public String BCity{set;get;}
    public String BState{set;get;}
    public String BCountry{set;get;}
    
    public generatePDFcls1(ApexPages.StandardController controller) {
    //Quote Qt=new Quote();
    Quote Qt=[select Name,id,ExpirationDate,Quote.Opportunity.Account.Name,Quote.Opportunity.Account.id,Quote.Opportunity.Account.BillingStreet,Quote.Opportunity.Account.BillingCity,Quote.Opportunity.Account.BillingState,Quote.Opportunity.Account.BillingCountry from Quote Where ID= : ApexPages.currentPage().getParameters().get('id') limit 1];
   
    System.debug('======>'+Qt);
    System.debug('======>'+ApexPages.currentPage().getParameters().get('id'));
    QuoteName=Qt.Name;
    ExpirationDt=Qt.ExpirationDate;
    Accountname=Qt.Opportunity.Account.Name;
    BStreet=Qt.Opportunity.Account.BillingStreet;
    BCity=Qt.Opportunity.Account.BillingCity;
    BState=Qt.Opportunity.Account.BillingState;
    BCountry=Qt.Opportunity.Account.BillingCountry;
    AccountID=Qt.Opportunity.Account.id;
    
    
    
    }

}