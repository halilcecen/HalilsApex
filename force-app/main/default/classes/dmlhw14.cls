public class dmlhw14 {
public static void test() {
list<classroom__c> listC= [select id from classroom__c where Standard__c in (6,8)];
Student__c stu1= new Student__c(First_name__c= 'Emma', Last_name__c='Watson', age__c= 10, classroom__c= listC[0].id);
insert stu1;

Student__c stu2= new Student__c(First_name__c='Angelina', Last_name__c='Jolie', age__c=11, classroom__c=listC[1].id);
stu1.Gender__c='Female';
stu2.Gender__c='Female';

List<Student__c>BothStu =new list<Student__c>{stu1, stu2};
system.debug('BEFORE UPSERT-->'+ BothStu);
UPSERT BothStu;
system.debug('AFTER UPSERT-->'+ BothStu);


}
}