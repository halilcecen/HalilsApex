public  class ListDemo2 {
    public static void ListDemo2() {
        List<integer> listInteger = new list<integer>();
   
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(75);
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);
        system.debug(listInteger);
   
    }

public static void candidateList() {
    list<string> candidates = new list<string>();  
    candidates.add('Elon');
    candidates.add('Marc');
    candidates.add('Larry');
    candidates.add('Kunal');
    candidates.add('Marc');
    system.debug(candidates);
 }
 public static void practice5() {
    list<integer> listInt = new list<integer>{2,5,9,18,25};
    listInt.add(8); //this is same old add method. we know this guy
    system.debug('listINt ==> ' + listInt); //(2,5,9,18,25,8)
    //version 2 of add method.
    //2 params 
        //1st: index number
        //2nd: value
    listInt.add(2, 21); //add method DOES NOT replace. It adds at that index. And push other values.
    system.debug('after add(2,21) ==> ' + listInt);
}
public static void practice6() {
    list<string> candidates = new list<string>();  
    candidates.add('Elon');
    candidates.add('Marc');
    candidates.add('Larry');
    candidates.add('Kunal');
    candidates.add('Marc');
    candidates.add('77');

    list<string> candidates2 = new list<string>{'Must', 'Benioff', 'Page', 'Shah', 'Benioff'};  

    candidates.addAll(candidates2);
    system.debug('candidate1 ==> ' + candidates);
    system.debug('candidate2 ==> ' + candidates2);

}

public static void pracitce7() {
list<integer> listInt = new list<integer>{2,5,9,18,25};

list<integer> listInt2 = listInt.clone();

system.debug('1 ==> ' + listInt);
system.debug('2 ==> ' + listInt2);

boolean contains9 = listInt.contains(9);//true or false?
system.debug('listInt contains 9? ' + contains9);
system.debug('listInt2 contains 9? ' + listInt2.contains(9));

system.debug('listInt2 contains 90? ' + listInt2.contains(90));

//list<integer> listInt3 = new list<integer> {8,10,15,21,25};

}


public static void practice6() {
    list<string> candidates = new list<string>();  
    candidates.add('Elon');
    candidates.add('Marc');
    candidates.add('Larry');
    candidates.add('Kunal');
    candidates.add('Marc');
    candidates.add('77');

    list<string> candidates2 = new list<string>{'Must', 'Benioff', 'Page', 'Shah', 'Benioff'};  

    candidates.addAll(candidates2);
    system.debug('candidate1 ==> ' + candidates);
    system.debug('candidate2 ==> ' + candidates2);

}

public static void pracitce7() {
list<integer> listInt = new list<integer>{2,5,9,18,25};

list<integer> listInt2 = listInt.clone();

system.debug('1 ==> ' + listInt);
system.debug('2 ==> ' + listInt2);

boolean contains9 = listInt.contains(9);//true or false?
system.debug('listInt contains 9? ' + contains9);
system.debug('listInt2 contains 9? ' + listInt2.contains(9));

system.debug('listInt2 contains 90? ' + listInt2.contains(90));

//list<integer> listInt3 = new list<integer> {8,10,15,21,25};

}

}
