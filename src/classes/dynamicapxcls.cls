public with sharing class dynamicapxcls {

    public list<string> strobj { get; set; }

    public dynamicapxcls(){
        
        list<Schema.Sobjecttype> schlst=Schema.getGlobalDescribe().values();
        
        strobj=new list<string>();
        
        for(schema.Sobjecttype s:schlst){
            if(String.valueof(s).contains('__c')){
                }
                else
                    strobj.add(String.valueof(s));
            
        } 
    
    }

}