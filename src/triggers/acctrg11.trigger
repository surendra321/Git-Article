trigger acctrg11 on Account (before insert,before update) {
    Account acc=trigger.new[0];
    contact con=new contact(); 
     con.mobilephone=acc.phone;

}