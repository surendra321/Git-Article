trigger depttrgg on department__c (before update) {
    
    if(trigger.isupdate){
    suri__department__c dept=trigger.new[0];
    System.debug('=======================>'+dept.name);
    list<suri__employees__c> emplst= [select id,name from  suri__employees__c where department__r.id=:dept.id];
    
    dept.suri__noemps__c=emplst.size();
    
    System.debug('=======================>'+emplst.size());
    
    
    }
}