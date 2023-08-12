public class PassangerPlane extends Airplane {
    public override void takeOff(){
        system.debug('passanger plane taking off...');
    }
    public override void land(){
        system.debug('p plan landing...');
    }
    public override void prepare(){
        system.debug('boarding p plane');
    }
}