public class DateCalculatorHW {

    Date startDate;
    Date endDate;
    
    public DateCalculatorHW() {
    startDate = Date.newInstance(System.today().year(), 1, 1);
    endDate = Date.newInstance(System.today().year(), 12, 31);
    }
    
    public DateCalculatorHW(Date start, Date endd) {
    startDate = start;
    endDate = endd;
    }
    
    public Date getStartDate() {
    return startDate;
    }
    
    public Date getEndDate() {
    return endDate;
    }
    
    public void daysBetweenDates() {
    Integer diff = startDate.daysBetween(endDate);
    System.debug('The number of days between ' + startDate.format() + ' and ' + endDate.format() + ' is ' + diff + ' days.');
    }
    }
   