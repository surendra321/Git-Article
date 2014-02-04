trigger ctrigg on Contact (before insert,before update) {
   contact ct=trigger.new[0];
    if(ct.leadsource==null){
        ct.leadsource='web';
        }
     
    /* if(ct.leadsource!=null && ct.mobilephone==null){
         ct.mobilephone.adderror('plz enter mp');  
       }*/
       
     if(trigger.isupdate){
         contact oldct=trigger.old[0];
         System.debug('----------old------'+oldct.leadsource);  
         System.debug('----------n------'+ct);
         }
}