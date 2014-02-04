trigger opptotalamounts on Opportunity (after insert,after delete) {

    if(trigger.isinsert){
       // Opportunity op=trigger.old[0];
        Opportunity op1=trigger.new[0];
        list<Account> acc=[select id,suri__totalamount__c from Account where id=:op1.Accountid];
        for(Account a:acc){
        a.suri__totalamount__c=a.suri__totalamount__c+op1.Amount;
        }
        update acc;
 
    
    }
    
    if(trigger.isdelete){
        Opportunity op=trigger.old[0];
        Opportunity op1=trigger.new[0];
        Account acc=[select id,suri__totalamount__c from Account where id=:op1.Accountid];
        acc.suri__totalamount__c=acc.suri__totalamount__c-op.Amount;
        update acc;
    }
}