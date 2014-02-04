trigger t1 on book__c (after insert) {
    list<book__c> blist=trigger.new;
        for(book__c b:blist){
            if(b.price__c<400){
                b.adderror('t1-----this low price');
              // b.price__c=450;
                }
}
}