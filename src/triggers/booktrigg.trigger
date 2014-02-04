trigger booktrigg on book__c(before insert,before update) {
    
    book__c bk=trigger.new[0];
    
    
    
    if(bk.dateofbirth__c!=null){
      //date d=date.today();
        integer days=bk.dateofbirth__c.daysbetween(date.today());
        
        integer y=days/365;
        
        integer m=math.mod(days,365)/30;
        
        integer da=math.mod(math.mod(days,365),30);
        
        bk.age__c=y+'years'+m+'months'+da+'days';
        
   }
   
   
    
  }