global class Batchap implements Database.Batchable<Book__c>{
    
   global Iterable<book__c> start(Database.BatchableContext bc) {
    
   list<book__c> blist=new list<book__c>([select name,edition__c,author__c,price__c from book__c]);
    
        return blist;
    
    }
   global void execute(Database.BatchableContext bc, LIST<book__c> blist){
    
        for(book__c b:blist){
            b.price__c=109;
            update b;
        }    
    
    
    }
    
    global void finish(Database.BatchableContext bc) {
    
    }
}