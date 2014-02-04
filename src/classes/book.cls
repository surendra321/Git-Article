public class book{
    public static testMethod void main(){
       
       
        book__c b1=new book__c(); 
        b1.name='c_language';
        b1.author__c='balaguru swami';
        b1.edition__c='third';
        b1.price__c=450;
        
        
        book__c b2=new book__c();
        b2.name='probabilities';
        b2.author__c='s.chand';
        b2.edition__c='fourth';
        b2.price__c=350;
        
        book__c b3=new book__c();
        b3.name='java';
        b3.author__c='mikel';
        b3.edition__c='third';
        b3.price__c=190;
        
        book__c b4=new book__c();
        b4.name='cobal';
        b4.author__c='profetional';
        b4.edition__c='sixth';
        b4.price__c=320;
        
        book__c b5=new book__c();
        b5.name='unix';
        b5.author__c='deepthi';
        b5.edition__c='third';
        b5.price__c=230;
        
        list<book__c> blist=new list<book__c>{b1,b2,b3,b4,b5}; 
        insert blist;
        list<book__c> blist1=[select id,name,edition__c from book__c];
         System.debug('hi'+blist1);   
        
       }
}