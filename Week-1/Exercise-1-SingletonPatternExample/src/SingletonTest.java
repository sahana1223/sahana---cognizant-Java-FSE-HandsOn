public class SingletonTest {

    public static void main(String[] args) {

        // Get the first Logger instance
        Logger logger1 = Logger.getInstance();
        logger1.log("First log message");

        // Get the second Logger instance
        Logger logger2 = Logger.getInstance();
        logger2.log("Second log message");

        // Check if both references point to the same object
        if (logger1 == logger2) {
            System.out.println("\nOnly one Logger instance exists.");
        } else {
            System.out.println("\nMultiple Logger instances exist.");
        }
    }
}
