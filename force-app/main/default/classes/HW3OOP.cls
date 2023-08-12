public  class HW3OOP {
   String EmpCode;
   string EmpName;
   decimal salary;


    public void show() {
    EmpCode='1324';
    EmpName='Grace Parker';
    salary= 5000.00;
    system.debug('Employee Code= ' +EmpCode);
    system.debug('Employee Name= '+EmpName);
    system.debug('Salary Gross= '+ salary);
}

    public void showAfterDeduct() {
        EmpCode='1324';
        EmpName='Grace Parker';
        salary= 5000.00;
        decimal AfterTax=salary -(salary*0.1);
        system.debug('Employee Code= ' +EmpCode);
        system.debug('Employee Name= '+EmpName);
        system.debug('Salary Gross= '+ salary);
        system.debug('Net Salary= ' +AfterTax.setscale(2));
      
    }
    }
