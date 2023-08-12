public class Homework41 {
public static void test() {
list<Student__c> ListStu =[ select First_Name__c, Last_Name__c, (select exam_name__c, Marks_obtained__c,Total_Marks__c from Exam_details__r) FROM Student__c ];
for( Student__c stu: ListStu){

system.debug('First Name: '+ stu.First_Name__c);
system.debug('Last Name: '+ stu.Last_Name__c);
list<Exam_detail__c> listExam = stu.Exam_details__r;
for (Exam_detail__c Exam:listExam ){
system.debug('Exam Name: '+exam.exam_name__c);
system.debug('Marks Obtanied: '+ exam.Marks_obtained__c);
system.debug('Total Marks: '+ exam.Total_Marks__c);
}

}


}
public static list<Employee__c>EmpShow (decimal salaryF){
  
list<Employee__c> EmpList = [select First_Name__c, Last_Name__c, country__c, salary__c from Employee__c where salary__c > :salaryF];

return EmpList;
}

public static void test2(){

decimal salaryF=500;
    list<Employee__c> EmpList = [select First_Name__c, Last_Name__c, country__c, salary__c from Employee__c where salary__c > :salaryF];
    system.debug( EmpList);
}

}

