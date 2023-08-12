public class TestAssigment2 {
    
public static void updateAccRevenue(Id accId, decimal annualRev){
      
Account a= new account();
a.id = accId;
a.AnnualRevenue= annualRev;
update a;

    }
}