public  class SobjectAssig {
    public static void test() {
     list<sobject> List1 = new list<sobject>{   
 new contact(firstname = 'Alex', LastName = 'John')

     };
     contact c1= (contact)List1[0];
     system.debug('First: ' + c1);
          insert list1;
          system.debug('After: ' + c1);
    
        }

        public static void test2() {
         
            contact c1 = new contact(FirstName = 'David', LastName='Miller', email='david.miller@gmail.com');
            insert c1;
    
            //get or fetch records using SOQL.
            list<sobject> sCon = [select id, firstname, email from contact where email = 'david.miller@gmail.com'];
    
            list<contact> updateContacts = new list<contact>();
            for (sObject eachSO : sCon) {
                
                contact c = (contact)eachSo;
                if (c.firstname == 'David') {
                    c.firstname = 'Dave';
                    updateContacts.add(c);
                }
            }
            update updateContacts;
            system.debug('final contact list: ' + updateContacts);
        }
    public static void test3(){
Employee__c E1= new Employee__c(First_name__c ='Dwayne' , last_name__c= 'Johnson', JoinDate__c=date.today() , email__c='dwayne@johnson.com');
insert E1;
List<sObject> EmpL =[select id, First_name__c, last_name__c ,email__c from Employee__c where email__c = 'dwayne@johnson.com'];
list<Employee__c> updateEmpl = new list<Employee__c>();
 for (sObject eachEmp : EmpL){
Employee__c e =(Employee__c)eachEmp;
if(e.First_name__c== 'Dwayne'){
    e.First_name__c= 'The';
    e.last_name__c= 'Rock';
    updateEmpl.ADD(e);

}

 }

update updateEmpl;
system.debug('RESULT'+ updateEmpl);


    }
    
    
    }
