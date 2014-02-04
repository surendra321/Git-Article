global class batchcls1 implements database.Batchable<Account>{
    global list<Account> start(database.batchablecontext bc){
        
       /* list<Account> aclst=new list<Account>();
        
        //this code for insert
        integer i;
        for(i=0;i<100;i++){
        Account ac=new Account(name='mama'+i,phone='2312');
        //ac.name='sumo';
        //ac.phone='221133';
        aclst.add(ac);
        }*/
        
        //this code for delete
        
        list<Account> aclst=[select id,name from Account where name like 'mama%'];
        
        
        return aclst;
    }
    
    global void execute(database.batchablecontext bc,list<Account> aclst){
        delete aclst;  
    }
    
    global void finish(database.batchablecontext bc){
    
    }
    }