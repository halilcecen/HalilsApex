public  class NewEmployeeClass extends OldEmployeeClass {
    string Designation;
    string Department;

    public string getDesignation(){
        return Designation;
    }
    public string getDepartment(){
        return Department;
    }

   public void setDesignation(string Designation){
    this.Designation=Designation;
   }
   public void setDepartment(string Department){
    this.Department=Department;
   }
 }
