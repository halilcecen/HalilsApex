public class Exceptionhw10 {
    public class MarksException extends exception{}

    public void validateMarks(integer marks){
        if (marks == null) {
            throw new MarksException('The Mark field can not be blank');
        } else if(marks > 100){
             throw new MarksException('The mark can not be more than 100!');
        } else if(marks < 0){
             throw new MarksException('The mark can not be negative Number!');
        } else {
            system.debug('The Mark is correct! Mark==> ' + marks);
        }
    }
}