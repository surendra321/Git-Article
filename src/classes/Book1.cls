public class Book1{
    String b_name;
    String author_name;
    String edition;
    decimal b_price;
    date d=date.parse('01/01/2002');
   
    
    public void setValues(String bnm,String anm,String ed,decimal bp){
        b_name=bnm;
        author_name=anm;
        edition=ed;
        b_price=bp;
    }
    
    public void discount(){
        
        if(b_price<100)
        b_price-=(b_price*5)/100;
        else if(b_price<200)
        b_price-=(b_price*10)/100;
        else if(b_price<300)
        b_price-=(b_price*15)/100;
        else  
        b_price-=(b_price*20)/100;
    }
    
    public void edition(date d){
        
        if(d<date.parse('01/01/2002')){
        
        system.debug('this is first edition');
        
        }
        else if(d<date.parse('01/01/2006')){
        system.debug('this is second edition');
        }
        else if(d<date.parse('01/01/2009')){
        system.debug('this is third edition');
        }
        else system.debug('this is fourth edition');
        
    }
    
   
    public void getValues(){
        System.debug('date is '+d);
        System.debug('book name is '+b_name);
        System.debug('author name  is '+author_name);
        System.debug('book edition  is '+edition);
        System.debug('price after discount is:'+b_price);
    }
    
    
    public static testmethod void main(){
     book1 b=new book1();
     b.getvalues();
     b.edition(date.parse('1/2/2009'));
     b.discount();
     b.setvalues('surendra','adad','asas',4);
    
}

 
 }