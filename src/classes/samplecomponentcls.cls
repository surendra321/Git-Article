public class samplecomponentcls{
    Public string OppName {get; set;}
    public virtual string getfirstval () { return OppName; }
    public virtual void setfirstval(string s) { OppName = s; }
    Public string secondval {get; set;}
    Public string thirdval {get; set;}
    public list<sobject> acclst;
    public list<sobject> acclst1{set; get;}
    public boolean display{set; get;}
    
    public samplecomponentcls(){
        display = false;
        //acclst = [select name, phone from account where name like 's%'];
    }
    public list<sobject> getacclst(){
        
            return acclst1;
    }
    
    public void click(){
      
        display = true;
        System.debug('--1--'+oppname);
        if(oppname != null){ 
            System.debug('--2--'+oppname);       
            if(oppname != ''){
                System.debug('--3--'+oppname);
                string st = '%'+Oppname+ '%';
                acclst1 = [select name, phone from account where name like :st];
            }
            else{
            System.debug('--4--'+oppname);
            acclst1 = [select name, phone from account where name like 'su%'];
           }
        }
        else{
            System.debug('--5--'+oppname);
            acclst1 = [select name, phone from account where name like 'su%'];
        }
    }
    
    public void close(){
        display = false;       
    }    
    
    
    
}