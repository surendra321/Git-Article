public  class mylist {
public void m1(){
list<department__c> dl=[select id,name,(select id,e_name__c from employees__r) from department__c];
//map<id,list<employees__c>> mp=new map<id,list<employees__c>>();
for(department__c d:dl){
   // mp.put(d.id,d);
    System.debug('@@@@@@@@@@@@@@@@@@@@---record is '+d);
    //System.debug('@@@@@@@@@@@@@@@@@@@@---id is '+d.id);
}
   // System.debug('*********************-----record are '+mp.values());
    //System.debug('*********************--------id are'+mp.keyset());
}
}