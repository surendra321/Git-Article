trigger lead1 on Lead (before insert) {
    lead l=trigger.new[0];
    if(l.email==null){
    
    l.adderror('fill email field first');
    }
   //this for............
   
   if(l.fax==null){
    
    l.adderror('fill fax field first');
    }
    
     if(l.mobilephone==null){
    
    l.adderror('fill mobile field first');
    }


    if(l.company==null){
    
    l.adderror('fill company field first');
    }
    
   




}