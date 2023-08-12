public class DmlAssigment6 { 
public static void test() {

    Classroom__c clls = [select id, Standard__c from Classroom__c where Standard__c = 6 limit 1];

    Student__c stu = new Student__c();
    stu.First_Name__c = 'Emma';
    stu.Last_Name__c = 'Watson';
    stu.Age__c = 11;
    stu.Classroom__c = clls.id; 
    insert stu;
    Classroom__c clls2 = [select id, Standard__c from Classroom__c where Standard__c = 8 limit 1];
    Student__c stu2 = new Student__c();
    stu2.First_Name__c = 'Angelina';
    stu2.Last_Name__c = 'Jolie';
    stu2.Age__c = 13;
    stu2.Classroom__c = clls2.id; 
    //After both of them
    stu.Gender__c = 'Female';
    stu2.Gender__c='Female';
    List<Student__c> StuList = new list<Student__c>{stu, stu2};
    System.debug('before upsert dml: ' + StuList);
    upsert StuList;
    system.debug('after upsert dml: ' + StuList);
}


}

