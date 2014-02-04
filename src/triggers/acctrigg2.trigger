trigger acctrigg2 on Account (after insert) {
    list<Account> acl=trigger.new;
    list<contact> conl=new list<contact>();
    
    for(Account a:acl){
        contact c=new contact();
       c.LastName = a.Name;
        c.MobilePhone = a.Phone;
       conl.add(c);
       }
       insert conl;
   
}