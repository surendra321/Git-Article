global class class2{
     webservice static String method2(string contractID){
     
        System.debug('Hello world=======+++++++++=========='+contractID);
        contract contr=[select id,Name,suri__Product1Price__c,suri__Product2Price__c,suri__Samsungprice__c,suri__LGprice__c from contract where id=:contractID]; 
        list<contractproduct__c> cplst=[select id,Name,suri__Product__c,suri__Product__r.Name,suri__NewPrice__c,suri__Contract__c from suri__ContractProduct__c where suri__Contract__c=:contractID ];

         for(contractproduct__c c:cplst){
             if(c.suri__Product__r.Name=='Product1'){
                 c.suri__NewPrice__c=contr.suri__Product1Price__c;
                 update c;
             }
             else if(c.suri__Product__r.Name=='Product2'){
                 c.suri__NewPrice__c=contr.suri__Product2Price__c;
                 update c;
             }
             else if(c.suri__Product__r.Name=='SamsungTV'){
                 c.suri__NewPrice__c=contr.suri__Samsungprice__c;
                 update c;
             }
             else if(c.suri__Product__r.Name=='LGTV'){
                 c.suri__NewPrice__c=contr.suri__LGprice__c;
                 update c;
             }
             else{
                 System.debug('success');
             }
             } 
             return 'test';
        }
    @istest static void main(){ 
        Account acc=new Account(Name='SFGAccount1');
        insert acc;
        contract con=new contract(Name='contract1',Product1Price__c=10,Product2Price__c=14,Samsungprice__c=11,LGprice__c=12,StartDate=date.today(),ContractTerm=8,Status='draft',AccountId=acc.id);
        insert con;
        Product2 pro1=new Product2(Name='Product1');
        insert pro1;
        ContractProduct__c conpro=new ContractProduct__c(Name='conpro1',Product__c=pro1.id,contract__c=con.id);
        insert conpro;
        
        Product2 pro2=new Product2(Name='Product2');
        insert pro2;
        ContractProduct__c conpro2=new ContractProduct__c(Name='conpro2',Product__c=pro2.id,contract__c=con.id);
        insert conpro2;
        
        Product2 pro3=new Product2(Name='SamsungTV');
        insert pro3;
        ContractProduct__c conpro3=new ContractProduct__c(Name='conpro3',Product__c=pro3.id,contract__c=con.id);
        insert conpro3;
        
        Product2 pro4=new Product2(Name='LGTV');
        insert pro4;
        ContractProduct__c conpro4=new ContractProduct__c(Name='conpro4',Product__c=pro4.id,contract__c=con.id);
        insert conpro4;
        
        class2 cls=new class2();
        method2(con.id);
        
    }

}