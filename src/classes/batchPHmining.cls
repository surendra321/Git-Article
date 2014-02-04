global class batchPHmining implements Database.Batchable<Opportunity>{

   global iterable<opportunity> start(Database.batchableContext cont){
       list<opportunity> oplst=[select id,suri__invoicedate__c from opportunity];
       return oplst;
   }
    
   global void execute(database.batchablecontext cont,list<opportunity> oplst){
       
       for(opportunity op:oplst){
           
           if(String.valueof(op.suri__invoicedate__c)==String.valueof(date.today())){
              // op.suri__status__c='sent';
               op.suri__status__c ='mail sent';
               update op;
           }    
       
       }
   
   }

    global void finish(database.batchablecontext cont){
   
       System.debug('compleateddddddddd');
   }


}