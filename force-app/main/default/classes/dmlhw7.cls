public  class dmlhw7 {
    public static void test() {
sobject emp1 = new employee__c(First_name__c='Dwayne', Last_name__c='Johnson',JoinDate__c=date.today(), email__c='dwayne@johnson.com');
insert emp1;
for(sobject oldEach: emp1){
    system.debug('BEFORE UPDATE FIRST NAME=>'+ oldEach.First_name__c);
    system.debug('BEFORE UPDATE LAST NAME=>'+ oldEach.Last_name__c);
    system.debug('JOIN DATE=>'+oldEach.JoinDate__c);
    system.debug('E-MAIL=>'+oldEach.email__c);
}

list<sobject>Eee =[select id, First_name__c,Last_name__c,JoinDate__c,email__c from employee__c where email__c='dwayne@johnson.com'];

        
        
list<employee__c> UpdateEmp  =new list<employee__c>();

for(sobject eachEmp: Eee){
    employee__c e1= (employee__c)eachEmp;

    if(e1.First_name__c=='Dwayne' & e1.Last_name__c=='Johnson'){
        e1.First_name__c='The';
        e1.Last_name__c='Rock';
        UpdateEmp.add(e1);
    

    }
}
update UpdateEmp;

system.debug('Latest version of Employee==>'+ UpdateEmp);

    }
}