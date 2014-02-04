public virtual class BankAccount{

    public String accounts { get; set; }
    
    string acc_name;
    integer acc_no;
    string branch_name;
    protected integer current_bal;
    static integer counter=0;
    integer min_bal=500;
    public BankAccount(){
        acc_name='suri';
        acc_no=0;
        branch_name='mrk';
        current_bal=0;
        
        counter++;    
    }
    /*public BankAccount(string a_n,integer a_no,string b_n,integer c_bal){
        acc_name=a_n;
        acc_no=a_no;
        branch_name=b_n;
        current_bal=c_bal;
        counter=0;
        counter++;    
    }*/
    
    
    
    public void setValues(integer pb,string an,integer ano,string bn){
        current_bal=pb;
        acc_name=an;
        acc_no=ano;
        branch_name=bn;
        }
    
    public void withdrawBalence(integer withdraw_bal){
        
        try{
        
        if(withdraw_bal>current_bal-min_bal){
        
        throw new BalanceException();
       
        }
       }
       
        catch(BalanceException e){
        System.debug('you have insuficient balence');
        }
        
        try{
        integer count=0;
        for(integer i=2;i<withdraw_bal/2;i++){
           if(math.mod(withdraw_bal,i)==0){
              count++;
              }
           }   
          if(count==0){
          throw new PrimeException();    
          } 
          
        current_bal-=withdraw_bal;
        System.debug('after withdraw the balence in your acc is'+current_bal);  
          
          }
        
        catch(PrimeException eb){
        System.debug('prime number balences are not withdraw');
        }
   }
        
        
        
    
    public void depositBalence(integer deposit_bal){
        current_bal+=deposit_bal;
        
        }   
    
    public void checkBal(){
        System.debug('bal is :'+current_bal);
    }
    
    
    public virtual void getValues(){
        System.debug('p_bal is :'+current_bal);
        System.debug('account holder name is :'+acc_name);
        System.debug('account number is :'+acc_no);
        System.debug('account branch is :'+branch_name);
        System.debug('objects are  is :'+counter);
    }
    
    public static void getCount(BankAccount atm ){
            
        System.debug('no of objects are :'+counter);
        System.debug('no of non static data member is :'+atm.acc_no);

    }    
    
   
}