public with sharing class searchcls1 {
    
    public List<Account> lst {get; set;}
    
    public string searchText {get; set;}
    
    public searchcls1(){
        lst = [Select id, name, phone from Account limit 1000];
    }
    
    
    public void search(){
    
        System.debug('--------------->'+searchtext);
        
        searchtext = searchtext+'%';
        string sQuery = 'Select id, name, phone from Account where name like \''+searchtext+'\'';
        if(sQuery != null){
           System.debug('===============================>>>>>>'+database.query(sQuery));
         
        lst = database.query(sQuery); 
        
        }
          
        
        
        
       
  
        
        
        
        else {
        system.debug('-----------------');
        ShowUserMessage('No Records Found11111');
        }
        
        
        if(lst.size()==0){
        
           ShowUserMessage('No Records Found22222');
        }
        
        
    }
     public void ShowUserMessage(String msg) {
             ApexPages.message mymsg = new ApexPages.message(ApexPages.Severity.ERROR,msg);
             ApexPages.addMessage(mymsg);
          return ;                                
    }   
}