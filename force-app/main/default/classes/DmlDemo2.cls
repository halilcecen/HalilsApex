public class DmlDemo2 {
    public static void dmlAssignment4() {
        Classroom__c c6 = [select id, Standard__c from Classroom__c where Standard__c = 6 limit 1];

        Student__c s1 = new Student__c();
        s1.First_Name__c = 'Joe';
        s1.Last_Name__c = 'Bardin';
        s1.Age__c = 11;
        s1.Classroom__c = c6.id; //do you all get this?
        insert s1;
        system.debug('new student id is ' + s1.Id);
    }
    public static void dmlUpdate2(){
        //update acc record which is present in the org.
        account acc = [select id, name, website, active__c from account order by createddate desc limit 1];

        system.debug('before update dml: ' + acc);
        acc.name = 'Timex';
        acc.Website = 'timex.com';
        update acc;
        system.debug('after update dml: ' + acc);
    }
    public static void sObjectDml1() {
        list<sobject> listSO = new list<sobject>{
            new account(name = 'Lacrose'),
            new contact(firstname = 'titan', LastName = 'king')
        };
        system.debug('before: ' + listSO);
        insert listSO;
        system.debug('after: ' + listSO);
    }
    public static void dmlAssignment9pt2() {
        list<contact> allContacts = [select id, firstname, birthdate from contact where account.name = 'ABC Corp'];
        for (contact eachContact : allContacts) {
            eachContact.LastReviewedDate__c = date.newInstance(1990, 01, 01);
        }
        update allContacts;
    }
public static void PracticeTesting(list<account> NamesAcc ){
system.debug('Deneme');

}
}