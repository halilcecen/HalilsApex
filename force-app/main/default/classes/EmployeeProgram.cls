public  class EmployeeProgram {
    public static void show() {
OldEmployeeClass old= new OldEmployeeClass(); 
old.setCode('0156');
old.setName('Teressa Johnson');
old.setSalary(2500.00);
System.debug('Old Employee Code = '+old.getCode());
system.debug('Old Employee Name ='+ old.getName());
system.debug('Old Employee salary ='+ old.getSalary());

NewEmployeeClass newEmp= new NewEmployeeClass();
newEmp.setCode('0176');
newEmp.setName('Mark Shoaf');
newEmp.setSalary(3500.00);
newEmp.setDepartment('Human Resources');
newEmp.setDesignation('District Manager');
System.debug('New Employee Code = '+newEmp.getCode());
system.debug('New Employee Name ='+ newEmp.getName());
system.debug('New Employee salary ='+ newEmp.getSalary());
system.debug('New Employee Departmant ='+ newEmp.getDepartment());
system.debug('New Employee Designation ='+ newEmp.getDesignation());

}
}