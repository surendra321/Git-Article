public class chooseColor {

    public String getItems() {
        return s;
    }
    String m='hello';
    String s = 'none';
 
    public String getString() {
        return s;
    }
                        
    public string setString(String s) {
        this.s = s;
        return m;
    }
    public list<Schema.Picklistentry> getEntries(){
        return Account.fields.Industry.getDescribe().getpicklistvalues();
    }
}