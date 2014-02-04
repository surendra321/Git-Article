public class EmployeeTest{
    public static testMethod void empMethod(){
        
        Employee emp=new Employee();
        emp.setValues(0001,'surendra',50000,'fresher');
        emp.bonus(20);
        emp.designation(1.11);
        emp.getValues();
        
        Employee emp1=new Employee();
        emp1.setValues(0001,'mikel',40000,'software engineer');
        emp1.bonus(15);
        emp1.designation(5.9);
        emp1.getValues();
        }
}