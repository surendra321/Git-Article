trigger t3 on book__c (before insert) {
    list<book__c> blist=trigger.new;
        for(book__c b:blist){
            if(b.price__c<400){
               // b.adderror('t3-----this is low price');
               b.price__c=470;
                }
}
}