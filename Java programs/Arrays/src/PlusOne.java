import java.util.Arrays;
/* question 66
You are given a large integer represented as an integer array digits,
where each digits[i] is the ith digit of the integer.
The digits are ordered from most significant to least significant in left-to-right order.
The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.
 */
public class PlusOne {

   static int[] plusOne(int[] digits) {
       for (int i = digits.length-1; i >-1 ; i--) {
           if (digits[i] < 9 ){
               digits[i] += 1;
               return digits;
               }
           digits[i] = 0;
           }
       int[] digits2 = new int[digits.length+1];
       digits2[0]= 1;
       return digits2;
       }

    public static void main(String[] args) {
int[] a = {9};
        System.out.println(Arrays.toString(plusOne(a)));
    }
}
