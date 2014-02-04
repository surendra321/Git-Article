public class collTest{
    public static  testMethod void main(){
        
        map<string,string> mp=new map<string,string>();
            mp.put('suri','anil');
            mp.put('subbu','arun');
            mp.put('suri','arun');
        for(string s1:mp.keySet()){
                
            System.debug(s1);
            }
            
         for(string s1:mp.values()){
                
            System.debug(s1);
            }
            
            
         
        
        
        
        
        
        
        /*list<String> student_names=new list<String>();
        student_names.add('surendra');
        student_names.add('mikel');
        student_names.add('sudeep');
        System.debug(student_names);
        
        set<integer> student_nos=new set<integer>();
        student_nos.add(51);
        student_nos.add(49);
        student_nos.add(50);
        System.debug(student_nos);
        
        set<String> faculty_names=new set<String>();
        faculty_names.add('osman');
        faculty_names.add('krishna');
        faculty_names.add('subbu');
        System.debug(faculty_names);
        
        set<String> college_names=new set<String>();
        college_names.add('tkr');
        college_names.add('prr');
        college_names.add('cbit');
        for(string name:college_names){
            
            System.debug(name);
            student_names.add(name);
        }
        
        System.debug(student_names);
        */
       /* coll_obj.add(student_names);
        System.debug(coll_obj);
        */
        }
}