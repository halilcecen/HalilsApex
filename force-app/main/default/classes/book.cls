public class book {

    string title;
    string author;
    decimal price;

    public Book() {
        system.debug('parameter less constructor. New Book created.');
        price = 0;
    }
    public Book(string title, string author, decimal price){
        this.title = title;
        this.author = author;
        this.price = price;
    }

    public void setPrice(decimal price){
        this.price = price;
    }

    public void display(){
        system.debug('title ' + title + ', author: ' + author + ', price: ' + price);
    }
}