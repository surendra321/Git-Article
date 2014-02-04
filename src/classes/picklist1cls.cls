public with sharing class picklist1cls {

public List<SelectOption> items { get; set; }
    
    public picklist1cls(){
        items  = new List<SelectOption>();
        
        List<Contact> lst = [Select id, name from Contact];
        
        for(Contact c: lst){
        items.add(new SelectOption(c.id, c.name));
        }
    }
}