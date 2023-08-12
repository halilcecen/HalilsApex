public class SoqlAssig {
    public static void show() {
            List<Student> listSt = [select id, name, LastName from Student limit 10];
system.debug(listSt);
for( Student eachStudent: listSt){
string name= eachStudent.name;
system.debug('Student Name= ' + name);
string LastName= eachStudent.LastName;
system.debug('Student Last Name= '+ LastName);
}
    }
}