public with sharing class jQuerycls {

    public List<Account> lst{get; set;}
    public list<sobject> list1{get; set;}
    public jQuerycls(){
//This Query queries accounts as well as it's associated Contacts.
        lst = [Select id, name,(Select id, name from Contacts) from account where name like 's%' order by name asc];
        //lst1 = [Select id, name,(Select id, name,(select id, name from opportunities) from Contacts) from account];
    
    }
}