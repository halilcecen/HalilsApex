public class HW9OOP {
String empCode;
String empName;
Decimal salary;

public void accept(string EC, string EN, decimal s){
    empCode=EC;
    empName=EN;
    salary=s;

}
public string getEmployeeCode(){

    return empCode;
}
public string getEmployeeName(){

    return empName;
}
public decimal getGrossSalary(){

    return salary;
}
public decimal netSalary(){

    return salary- (salary*0.1);
}



}