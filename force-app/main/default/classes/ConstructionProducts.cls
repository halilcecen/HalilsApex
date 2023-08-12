public class ConstructionProducts implements Products{
public void getProductName() {
System.debug('Producct name= Brick');
}
public void getDiscount(){
integer ConsPrice=100;
integer ConsDiscount= (ConsPrice/100)*2;
system.debug('Discount= '+ ConsDiscount);
}
public void getPrice (){
Decimal  ConsPrice=100;
Decimal ConsDiscount=(ConsPrice/100)*2;
ConsPrice=ConsPrice-20;
system.debug('Price of Vegetable= ' +(ConsPrice-ConsDiscount));
}
}


