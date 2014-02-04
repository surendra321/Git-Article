public class mybookclass {

    public PageReference preview() {
        //PageReference pf=new PageReference('https://ap1.salesforce.com/apex/mybook1');
        return page.mybook1;
    }


    book__c b;

    public PageReference cancle() {
       PageReference pf=new PageReference('https://ap1.salesforce.com/apex/mybook1');
        return pf;
    }


    public PageReference saveandnew() {
        b=new book__c();
       b.name=name;
       b.price__c=price;
       b.author__c=author;
       b.edition__c=edition; 
       insert b;
       
        PageReference pf=new PageReference('https://ap1.salesforce.com/apex/mybook1');
        return pf;
    }


    

    public PageReference save() {
       b=new book__c();
       b.name=name;
       b.price__c=price;
       b.author__c=author;
       b.edition__c=edition; 
       insert b;
       PageReference pf=new PageReference('/'+b.id);
       pf.setredirect(true);
        return pf;
    }


    public String edition { get; set; }

    public String author { get; set; }

    public decimal price { get; set; }

    public PageReference next() {
        return page.mybook2;
    }


    public String name { get; set; }
}