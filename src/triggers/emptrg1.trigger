trigger emptrg1 on suri__employees__c (after insert,before update) {
    
  /* suri__employees__c emp=trigger.new[0];

   suri__employees__c emp1=[select suri__department__c from suri__employees__c where id=:emp.id];
   
   suri__department__c dept=[select suri__emps__c,id from suri__department__c where name=:'d-012'];
   
   dept.suri__emps__c+=1;
   
   update dept;*/
   
   
   
    /*if(trigger.isinsert && trigger.isupdate){
    suri__employees__c emp=trigger.new[0];
    
    System.debug('------------------------->'+emp);
    
    suri__employees__c emp1=[select suri__department__c from suri__employees__c where id=:emp.id];
    
    System.debug('------------------------->'+emp);
    
    suri__department__c dept=[select name,suri__dept_name__c from suri__department__c where name=:emp1.suri__department__c];
    
    dept.suri__emps__c=dept.suri__emps__c+1;
    system.debug('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'+dept.suri__emps__c);
    update dept;
   }*/
}