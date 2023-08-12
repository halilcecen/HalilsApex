public abstract class GeometryClass2 {
protected Decimal length;
protected Decimal breadth;

public void setLength(Decimal len) {
length = len;
}

public void setBreadth(Decimal breadth2) {
breadth = breadth2;
}

public Decimal getLength() {
return length;
}

public Decimal getBreadth() {
return breadth;
}

public abstract Decimal getArea();

public abstract Decimal getPerimeter();
}
