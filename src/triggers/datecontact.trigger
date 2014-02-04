trigger datecontact on Contact (after insert, after update) {
    list<contact> conlst = [select id,birthdate from contact where id IN :trigger.newmap.keyset()];
    list<contact> conlst2 = new list<contact>();
     if(recurscls.isupdate==false){
    for(contact c:conlst){
        integer year1 = c.birthdate.year();
        integer month1 = c.birthdate.month();
        integer date1 = c.birthdate.day();
        datetime dt2 = DateTime.newinstance(year1, month1, date1, 12, 00, 00);
        c.startdate__c = dt2;
        conlst2.add(c);
    }
    recurscls.isupdate=true;        
    update conlst2;
    
    }
}