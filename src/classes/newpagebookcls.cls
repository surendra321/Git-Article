public class newpagebookcls {

    public newpagebookcls(ApexPages.StandardController controller) {

    }
@istest
public static void main(){
 apexpages.standardcontroller qc = new apexpages.standardcontroller(new book100__c());
 newpagebookcls np = new newpagebookcls(qc);
}
}