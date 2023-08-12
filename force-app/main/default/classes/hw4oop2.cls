public  class hw4oop2 {
    public static void show() {
        List<decimal> MarksL = new list<decimal>{75.0 , 80.5 , 63.5 ,55.0 ,95.5};
HW4OOP Student = new HW4OOP();

Student.accept('1453', 'Scott Carson',MarksL );
 
        decimal totalMark= 0;
        for(decimal eachMark:MarksL){
            totalMark=totalMark+eachMark;
 }
    Decimal AverageMark= totalMark/MarksL.size();
    system.debug('Admisson Code= '+Student.getStudentNo() );
    system.debug('Student Name= '+Student.getSName() );
    system.debug('Total Marks= '+ totalMark.setscale(1));
    system.debug('Average Marks= '+AverageMark.setscale(1));

    }
}