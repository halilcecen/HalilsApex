public  class HW5OOP {
   Date startDate;
   Date endDate;

    
    
    
    public void accept() {
        startDate=date.newinstance(2019, 06, 14);
        endDate=date.newinstance(2023, 04, 16);



    }
public integer Daysbetweendates(){
   return  startDate.daysbetween(endDate);

}
public integer  monthbetweendates(){
    return  startDate.monthsBetween(endDate);

}
}

