public  class NewStudent {
string admNo;
string StudentName;
list<integer>marks;
integer TotalMarks;
integer avarageMark;





    public void NewStudent1() {
string admNo= '1235';
string StudentName='Harry Kewell';
list<integer>marks=new list<integer>{55,72,98,86};
integer TotalMarks= 0;

for(integer eachMark:marks){
TotalMarks=eachMark+TotalMarks;

}   
integer avarageMark= totalMarks/marks.size();

system.debug('Admisson Code= '+admNo );
system.debug('Student Name= '+StudentName );
system.debug('Total Marks= '+ totalMarks);
system.debug('Average Marks= '+avarageMark);



}
}