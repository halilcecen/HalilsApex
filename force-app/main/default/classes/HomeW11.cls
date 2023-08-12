public class HomeW11 {
    String empCode;
    String empName;
    Decimal BasicSalary;
    decimal dAllowance;
    decimal TAllowance;
    decimal houseRentA;
    decimal netSalary;
    public void CreateEmployee(string EC, string EN, decimal s){
        empCode=EC;
        empName=EN;
        BasicSalary=s;
        getDA();
        getTA();
        getHR();
        getNetSalary();
    }
    public void showDetails(){
        system.debug('Employee Code= ' +EmpCode);
        system.debug('Employee Name= '+EmpName);
        system.debug('Salary Gross= '+ BasicSalary);
        system.debug('Dearness Allowance= '+dAllowance);
        system.debug('House Rent= '+houseRentA);
        system.debug('Travel Allowance= '+TAllowance );
        system.debug('Net Salary= '+ netSalary);
    }
    private void getDA(){
  decimal DA= BasicSalary *0.9;
  dAllowance=da;
    }
private void getTA(){

    decimal ta= BasicSalary*0.15;
    TAllowance=ta;
}
    private void getHR(){
        decimal hr= BasicSalary*0.2;
        houseRentA=hr;
    }
    public void getNetSalary(){
        decimal ns =0;
  ns = BasicSalary+houseRentA+TAllowance+dAllowance;
 netSalary=ns;
    }
    }