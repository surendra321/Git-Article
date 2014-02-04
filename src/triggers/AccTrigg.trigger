trigger AccTrigg on Account (before insert) {
    Account ac=trigger.new[0];
    
    if(ac.AccountNumber!=null){
        ac.name=ac.AccountNumber;
        }

}