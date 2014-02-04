global class scheduleABatch implements schedulable{
  
 global void execute(SchedulableContext sc){
      Batchap ba=new Batchap();
      id gid=Database.executeBatch(ba);
  
  }
  
    }