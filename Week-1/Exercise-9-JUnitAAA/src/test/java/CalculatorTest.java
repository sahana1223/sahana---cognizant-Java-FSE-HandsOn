import org.junit.Before;
import org.junit.After;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CalculatorTest {

    private Calculator calculator;

    // Setup method
    @Before
    public void setUp() {
        System.out.println("Setting up...");
        calculator = new Calculator();
    }

    // Test using Arrange-Act-Assert Pattern
    @Test
    public void testAddition() {

        // Arrange
        int a = 10;
        int b = 20;

        // Act
        int result = calculator.add(a, b);

        // Assert
        assertEquals(30, result);
    }

    // Teardown method
    @After
    public void tearDown() {
        System.out.println("Cleaning up...");
        calculator = null;
    }
}