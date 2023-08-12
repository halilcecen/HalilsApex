public class DmlTesting {
    public static void dmlUpsert1() {
        Exam_Detail__c ed = new Exam_Detail__c(	Exam_Name__c='Geography',Total_Marks__c =1800, Marks_Obtained__c=1720);
        insert ed;
        Exam_Detail__c ed1 = new Exam_Detail__c(	Exam_Name__c='Geometry',Total_Marks__c =1900, Marks_Obtained__c=1620);
        insert ed1;
        Exam_Detail__c ed2 = new Exam_Detail__c(	Exam_Name__c='Social Work',Total_Marks__c =1850, Marks_Obtained__c=1680);
        insert ed2;
        Exam_Detail__c ed3 = new Exam_Detail__c(	Exam_Name__c='Chemistry',Total_Marks__c =1700, Marks_Obtained__c=1580);
        insert ed3;
        Exam_Detail__c ed4 = new Exam_Detail__c(	Exam_Name__c='Physics',Total_Marks__c =1800, Marks_Obtained__c=1620);
        insert ed4;

    }
}