public class Assigment {
 

        public static list<Employee__c> showEmp(decimal salaryE, decimal SalaryA) {
            list<Employee__c> filterAccounts = [select first_name__c, Last_Name__c, Salary__c  FROM Employee__c where Salary__c>:salaryE OR Salary__c<:SalaryA];
            for(Employee__c eachEmp: filterAccounts){
                system.debug('Employee Name='+ eachEmp.First_Name__c+ ' '+ eachEmp.Last_Name__c);
                system.debug('Employee Salary='+ eachEmp.salary__c);
            
        }
        return filterAccounts;

        }
        
        
        }

    


