public class RectangleClass2 extends GeometryClass2 {
public override Decimal getArea() {
return length * breadth;
}

public override Decimal getPerimeter() {
return 2 * (length + breadth);
}
}
