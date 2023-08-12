public class ControlFlow31 {
    public static void practice(){
        decimal BA=8000;
        
        If(BA>=25000){
            system.debug('Travel Allowance=' + ' ' + (BA*0.1));  
            system.debug('Dearness Allowance='+ ' ' + (BA*0.8));
            system.debug('House Rent Allowance' + ' ' + (BA*0.1));
            system.debug('Total Salary=' + ((BA*0.1) + (BA*0.1)+(BA*0.8)+ BA));
        }
        
        Else if(10000<=BA && BA<25000){
            system.debug('Travel Allowance=' + ' ' + (BA*0.12));  
            system.debug('Dearness Allowance='+ ' ' + (BA*0.85));
            system.debug('House Rent Allowance' + ' ' + (BA*0.15));
            system.debug('Total Salary=' + ((BA*0.15) + (BA*0.12)+(BA*0.85)+ BA));
            
        }
        Else if(BA<10000){
            system.debug('Travel Allowance=' + ' ' + (BA*0.15));  
            system.debug('Dearness Allowance='+ ' ' + (BA*0.9));
            system.debug('House Rent Allowance' + ' ' + (BA*0.2));
            system.debug('Total Salary=' + ((BA*0.2) + (BA*0.15)+(BA*0.9)+ BA));
            
            
        }
        
        
        
    }
}