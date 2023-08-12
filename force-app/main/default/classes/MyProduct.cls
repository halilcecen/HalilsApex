public class MyProduct {
    string productName;
    decimal rate;
    integer quantity;
    static final integer hiddenCost = 10;
 
    public integer getHiddenCost(){
         return hiddenCost;
    }
 
     public void setProductName(string productName){
         this.productName = productName;
     }
     public string getProductName(){
         return this.productName;
     }
 
     public void setRate(decimal rate){
         this.rate = rate;
     }
     public decimal getRate(){
         return this.rate;
     }
 
     public void setQuantity(integer quantity){
         this.quantity = quantity;
     }
     public integer getQuantity(){
         return this.quantity;
     }
 
     public decimal getTotal(){
         decimal t = (rate * quantity) + hiddenCost;
         return t.setScale(2);
     }
 }
 
 
 
 