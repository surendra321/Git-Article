public class pagenationcls {

    public list<Account> getAccounts() {
        list<Account> alst=new list<Account>();
        alst=[select Name,phone from Account limit 5];
        return alst;
    }

}