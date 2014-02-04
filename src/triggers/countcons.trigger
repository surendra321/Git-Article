trigger countcons on Contact (after insert) {
   list<contact> con=trigger.new;
   // list<contact> conlst=[select id from contact where accountid=:con.accountid];
   // account acc=[select id from account where id=:con.accountid ];
   // acc.noofcons__c=conlst.size();
   // update acc;
    
    for(contact c:con){
        list<contact> conlst=[select id from contact where accountid=:c.accountid];
        account acc=[select id from account where id=:c.accountid ];
        acc.noofcons__c=conlst.size();
        update acc;
    
    
    }
}