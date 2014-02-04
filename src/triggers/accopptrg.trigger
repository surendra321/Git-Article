trigger accopptrg on Account (before update) {
    Account acc = trigger.new[0];
    list<Opportunity> opl=[select amount,id from Opportunity where Accountid=:acc.id];
   System.debug('===============>>>>>'+opl);
    for(Opportunity op:opl){
       acc.suri__totalamount__c =acc.suri__totalamount__c + op.amount;
    
    }

}