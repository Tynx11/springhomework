public class Model {
    private long a;

    public String calculate(long number1, long number2, String operator) {
        switch (operator) {
            case "+":
                try {
                    return String.valueOf(number1 + number2);
                } catch (ArithmeticException exc) {
                    return exc.getMessage();
                }
            case "-":
                try {
                    return String.valueOf(number1 - number2);
                } catch (ArithmeticException exc1) {
                    return exc1.getMessage();
                }
            case "*":
                try {
                    return String.valueOf(number1 * number2);
                } catch (ArithmeticException exc) {
                    return exc.getMessage();
                }
            case "/":
                try {
                    return String.valueOf(number1 / number2);
                } catch (ArithmeticException exc2) {
                    return exc2.getMessage();
                }

        }

        System.out.println("Unknown operator - " + operator);
        return "0";
    }
}