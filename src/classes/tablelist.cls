public class tablelist {

    public list<Account> getAcclst() {
        list<Account> Acclst=[select id,name,BillingCity,phone from Account limit 10 offset 10 ];
        return Acclst;
    }

}