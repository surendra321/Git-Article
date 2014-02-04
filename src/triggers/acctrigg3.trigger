trigger acctrigg3 on Account (after insert,after update) {
    Account ac=trigger.new[0];
    //recurscls rs = new recurscls();
    if(recurscls.isupdate==false){
        Account ac1=[select id,name from Account where id=:ac.id];
        ac1.phone='99999999';
        if(recurscls.no >=10){
            recurscls.isupdate=true;
        }
        recurscls.no=recurscls.no+1;
        update ac1;
       
   }
}