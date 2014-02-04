public class MultiAdd
{
    
   
    public List<Account>lstAcct  = new List<Account>();
    
 
    public List<innerClass> lstInner {get;set;}
    
    public String selectedRowIndex{get;set;}  
    
    public Integer count = 1;
    public PageReference Save()
    {
        PageReference pr = new PageReference('/apex/addremoveaction');
        
        
        for(Integer j = 0;j<lstInner.size();j++)
        {
            lstAcct.add(lstInner[j].acct);
        } 
        insert lstAcct;
        pr.setRedirect(True);
        return null;
    }
    public void Add()
    {   
        count = count++;
        addMore();      
    }
    
    public void addMore()
    {
        innerClass objInnerClass = new innerClass(count);
        lstInner.add(objInnerClass);    
        system.debug('lstInner---->'+lstInner);            
    }/* end addMore*/
    
    /* begin delete */
    public void Del()
    {
        system.debug('selected row index---->'+selectedRowIndex);
        lstInner.remove(Integer.valueOf(selectedRowIndex)-1);
        count = count - 1;
        
    }/*End del*/
    
    
    
    /*Constructor*/
    public MultiAdd(ApexPages.StandardController ctlr)
    {
    
        lstInner = new List<innerClass>();
        addMore();
        selectedRowIndex = '0';
        
    }/*End Constructor*/
        


    /*Inner Class*/
    public class innerClass
    {       
        /*recCount acts as a index for a row. This will be helpful to identify the row to be deleted */
        public String recCount
        {get;set;}
        
        
        public Account acct 
        {get;set;}
        
        /*Inner Class Constructor*/
        public innerClass(Integer intCount)
        {
            recCount = String.valueOf(intCount);        
            
            /*create a new account*/
            acct = new Account();
            
        }/*End Inner class Constructor*/    
    }/*End inner Class*/
}/*End Class*/