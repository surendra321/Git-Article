public class dataListCon {

        list<Account> accounts;

        public list<Account> getAccounts() {
                if(accounts == null) 
                    accounts = [SELECT Name,type,phone FROM Account LIMIT 10];
                return accounts;
        }

}