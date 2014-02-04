trigger totalamount on Contact (after insert, after update, after delete) {
  
   public decimal acctotalamount=0;
   public decimal oldamount=0;
   //public decimal newamount=0;
   
   
   if(trigger.isinsert || trigger.isupdate){    
    for(contact c1:trigger.new){
        if(c1.accountid != null){
        
            list<contact> conlst1=[select id,amount__c from contact where accountid=:c1.accountid];
            for(contact c2:conlst1){
                if(c2.amount__c != null){
                    acctotalamount=acctotalamount+c2.amount__c;
                }           
                }
            account acc1=[select totalamount__c from account where id=:c1.accountid ];
            acc1.totalamount__c=acctotalamount;
            update acc1;
            
            }
     }
    }
    
    /*if(trigger.isupdate){
        contact c3=trigger.old[0];
        oldamount=c3.amount__c;
        contact c4=trigger.new[0];
        newamount=c4.amount__c;
        account acc=[select id,totalamount__c from account where id=:c4.accountid ];
        acc.totalamount__c=acc.totalamount__c-oldamount+newamount;
        update acc;
    }*/
    
   if(trigger.isdelete){
       contact c3=trigger.old[0];
       if(c3.accountid != null){
           oldamount=c3.amount__c;
           account acc2=[select id,totalamount__c from account where id=:c3.accountid ];
           acc2.totalamount__c=acc2.totalamount__c-oldamount;
           update acc2;
       }    
   }
}