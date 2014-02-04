public class compbodycls {

public List<Account> accounts {
    get {
    accounts = [select name,phone, billingcity, billingstate, billingstreet, billingpostalcode 
    from account where ownerid = :userinfo.getuserid()limit 5];
    return accounts;
    }
    set;
    }
}