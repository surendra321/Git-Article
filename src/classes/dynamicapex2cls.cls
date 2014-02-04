public with sharing class dynamicapex2cls {

    public list<selectoption> items { get; set; }
    
    public dynamicapex2cls(){
        Schema.DescribeFieldResult f = Schema.sObjectType.Account.fields.type;
        System.debug('-----------'+f);
        items = new List<SelectOption>();
        for(Schema.picklistentry pe: f.getpicklistvalues()){
            items.add(new SelectOption(pe.getvalue(), pe.getLabel()));
        
        }
    }
    
    
}