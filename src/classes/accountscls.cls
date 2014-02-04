public with sharing class accountscls {
    
    public accountscls(){
        
        List<AggregateResult> lst = [Select count(id), billingcountry from Account where billingcountry != null group by billingcountry];
        lstwrap = new List<wrapper>();
        for(AggregateResult ar: lst){
            lstwrap.add(new wrapper(String.valueOf(ar.get('billingcountry')), Integer.valueOf(ar.get('expr0'))));
        }
    }
    Public List<wrapper> lstwrap{get; set;}
    public class wrapper{
        public string country{get; set;}
        public Integer cnt{get; set;}
        public wrapper(string c, integer i){
            country = c;
            cnt= i;
        }
    }

}