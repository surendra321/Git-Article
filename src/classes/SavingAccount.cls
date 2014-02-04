public class SavingAccount extends BankAccount{
    integer simpleintrest;
    
    public void intrest(integer tm,integer ri){
        System.debug('current bal is :'+current_bal);
        simpleintrest=(current_bal*tm*ri)/100;
    } 
    
    public override void getvalues(){
        System.debug('simpleintrest is :'+simpleintrest);
    }      
}