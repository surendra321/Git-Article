trigger case1 on Case (before insert) {
    case c1 = trigger.new[0];
    string str='005900000013rCKAAY';
      //for(case c1: trigger.new){
        if(c1.ownerid == str && c1.Priority == 'P1'){
             
                list<case> lstcase=[select id from case where suri__insertdate__c=:c1.suri__insertdate__c and ownerid=:c1.ownerid and Priority=:c1.Priority];
                //case c2=[select id,roundcheck__c from case where id=:trigger.new[0].id limit 1];
                if(lstcase.size()<2){
                    c1.roundcheck__c=1;
                    //insert c1;
                      
                }
                else if(lstcase.size()>=2){
                    c1.roundcheck__c=2;
                    //insert c1;
                    
                }
                else{
                    System.debug('list has no rows');
                }
             } 
        
             
       /*for(case c1: trigger.new){
         if(c1.ownerid=='005900000015SXqAAM' && c1.Priority == 'P1'){
             
                list<case> lstcase2=[select id from case where suri__insertdate__c=:c1.suri__insertdate__c and ownerid=:c1.ownerid and Priority=:c1.Priority];
                //case c2=[select id,roundcheck__c from case where id=:trigger.new[0].id limit 1];
                if(lstcase2.size()<=2){
                    c1.roundcheck2__c=1;
                    //insert c1;
                      
                }
                else if(lstcase2.size()>2){
                    c1.roundcheck2__c=2;
                    //insert c1;
                    
                }
                else{
                    System.debug('list has no rows');
                }
             }     
       } */      
 }