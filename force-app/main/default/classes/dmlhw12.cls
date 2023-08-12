public class dmlhw12 {
    public static void test() {
list<sobject>JW1=[select id, First_name__c, Last_name__c, gender__c, age__c from student__c where First_name__c='John' AND Last_name__c='Wick'];
list<student__c>UpdateJohn= new list<student__c>();
for(sobject eachJ: JW1 ){
    student__c StuJ=(student__c)eachJ;
    StuJ.gender__c='Male';
    StuJ.Age__c=10;
    UpdateJohn.add(StuJ);

}
update UpdateJohn;
system.debug('New John Wick==>'+ UpdateJohn);

}
}