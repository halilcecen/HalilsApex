public class array2
public static void practice1(){
        integer[] intArray = new integer[5];

        intArray[0] = 77;
        system.debug(intArray);

        intArray[5] = 55; //will this work?
        system.debug(intArray);
    }


public static void practice2(){ 
        integer[] intArray = new integer[6];

        for(integer i = 0; i < 6; i++){
            //intArray[0] = 1;
            //intArray[1] = 2;
            intArray[i] = i+1;
        }
        system.debug('full Array ' + intArray);

        //get the value at position 3 (means index 2)
        system.debug('value at position 3 is ' + intArray[2]);
        for(integer i = 0; i < 10; i++){
            //intArray[0] = 1;
            //intArray[1] = 2;
            if(i < intArray.size()){
                system.debug('value at each position ' + intArray[i]);
            } else {
                system.debug('NO INDEX FOUND. i ==> ' + i);
            }
            
        }
        
        //we have a method called .size();
        system.debug('size of our array ' + intArray.size());
        //system.debug('value at position 6 is ' + intArray[6]);
}
}