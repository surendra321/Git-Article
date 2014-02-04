public class bankaccountclass {

    


    public integer amount2 { get; set; }

    public integer amount1 { get; set; }

    public integer current_bal { get; set; }
    
    public integer withdraw_res { get; set; }
    
    public integer deposit_res { get; set; }
    

    public void withdraw() {
        
        withdraw_res=current_bal-amount1;
        current_bal=withdraw_res;
    }

    public void deposit() {
        
       deposit_res=current_bal+amount2;
        current_bal=deposit_res;
   }
   }