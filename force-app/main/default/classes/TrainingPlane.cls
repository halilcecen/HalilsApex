public  class TrainingPlane extends Airplane {
    public override void takeOff(){
        system.debug('start training');
    }
    public override void land(){
        system.debug('stop training');
    }
    public override void prepare(){
        system.debug('prepare for traning');
    }
}