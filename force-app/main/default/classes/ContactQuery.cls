public class ContactQuery {
    public static void ContactAssigment(String contactName) {
    
            Id cc = [SELECT Id ,name FROM Contact WHERE Name = :contactName limit 1]?.id;
       
        
    }
}