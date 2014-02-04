global class schedulePHmining implements schedulable{

    global void execute(schedulableContext sc){
        
        batchPHmining bpm=new batchPHmining();
        database.executebatch(bpm);
    
    }
}