global class bookws{
    webservice static void inst(string bn,decimal pr){
        book__c b=new book__c();
        b.name=bn;
        b.price__c=pr;
        insert b;
        }
        }