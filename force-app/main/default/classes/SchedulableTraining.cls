public class SchedulableTraining implements Schedulable {
    public void execute(SchedulableContext st) {
        QueueableTraining qt = new QueueableTraining();
        System.enqueueJob(qt);
    }
}