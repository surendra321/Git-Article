trigger opptrg on Opportunity (before update) {
    opportunity op=trigger.new[0];
    opportunity op1=trigger.old[0];
    if(op.stagename=='Closed Won' ){
   system.debug('==================>'+op.stagename);
    system.debug('==================>'+op.leadsource);
    system.debug('==================>'+op1.leadsource);
   op.leadsource=op1.leadsource;
       
    
    }
    
    

}