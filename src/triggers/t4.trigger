trigger t4 on book__c (before insert) {
    
    book__c b1=Trigger.new[0];
    /*list<book__c> b2=[select id,name from book__c where primary__c=true];
    
    if(b2.size()>0){
    
        b1.adderror('already check but u dot check');
        }*/
    
    list<book__c> b3=[select id,name from book__c where primary__c=true];
    for(book__c b:b3){
        b.primary__c=false;
        }
        update b3;    
        

}