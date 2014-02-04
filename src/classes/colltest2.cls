public class colltest2{
    public static testMethod void main(){
        
        //nested list
        list<integer> ab=new list<integer>{2,3,4,5};
        integer m=ab.get(0);
        System.debug(m);
        System.debug(ab[0]);
        //abow two debugs give same value but it hav different behaviours
        //ab.clear(); it removs all integers in list ab
        ab.set(1,9);
        list<integer> cd=new list<integer>{6,7,8,9};
        list<integer> ef=new list<integer>{10,11,12,13};
        list<list<integer>> li=new list<list<integer>>{ab,cd,ef};
        
        for(list<integer> l:li){    
        System.debug(l);
        }
        
        //nested list with set
        set<integer> gh=new set<integer>{14,15,16,17};
        set<integer> ij=new set<integer>{18,19,20,21};
        set<integer> kl=new set<integer>{22,23,24,25};
        list<set<integer>> lise=new list<set<integer>>{gh,ij,kl};
        
        for(set<integer> l:lise){
            System.debug(l);
        }  
        
        /*
        //nested set with list
        list<integer> mn=new list<integer>{26,27,28,29};
        list<integer> op=new list<integer>{6,7,8,9};
        list<integer> qr=new list<integer>{10,11,12,13};
        set<list<integer>> seli=new set<list<integer>>{mn,op,qr};
        */
        // we can not send list to set
        
        map<integer,list<integer>> mpls=new map<integer,list<integer>>();
        mpls.put(4,cd);
         System.debug(mpls);
        
        List<Account> accs = [SELECT Id, Name FROM Account LIMIT 1000]; 
         System.debug(accs);
     
        
    }

}