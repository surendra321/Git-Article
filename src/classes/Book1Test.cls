public class Book1Test{
    public static testMethod void bookMethod(){
        
        book1 bk=new book1();
        bk.setValues('c_landuage','balaguru swami','first edition',600);
        bk.discount();
        bk.edition(date.parse('07/08/2005'));
        bk.getValues();
        
        book1 bk1=new book1();
        bk1.setValues('probability and statistics','chandh','second edition',150);
        bk1.discount();
        bk.edition(date.parse('07/08/2018'));
        bk1.getValues();
    }
}