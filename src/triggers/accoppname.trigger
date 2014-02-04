trigger accoppname on Account (after update) {
    account a=trigger.new[0];
    list<Opportunity> oplst;
     oplst=[select id,name from Opportunity where AccountId=:a.Id limit 999];
    if(oplst.size()>0){
    for(opportunity oop: oplst){
    oop.name=a.name;
    update oop;
    }
    
    }
}