public class dmlhw9 {
    public static void test() {
        list<department__c> emplist=[select id,name__c from department__c where name__c='Information Technology'];
        sobject empDep =new employee__c(First_name__c='Dwayne', Last_name__c='Johnson', salary__c=100000 ,JoinDate__c=date.newinstance(2023,06,01),department__c=emplist[0].id);
    insert empDep;

    list<sobject>DJ=[select id, First_name__c, Last_name__c, salary__c,JoinDate__c,department__c from employee__c where First_name__c='Dwayne' AND Last_name__c='Johnson'];
    for(sobject eachemp: DJ){
        employee__c e11=(employee__c)eachemp;
        system.debug('Employee ID= '+e11.id);
        system.debug('First Name= '+e11.First_name__c);
        system.debug('Last Name= '+ e11.Last_name__c);
        system.debug('Department ID=  '+e11.department__c);
        system.debug('Salary= '+e11.salary__c);
    }
    system.debug(empDep);

    
    
    }
}