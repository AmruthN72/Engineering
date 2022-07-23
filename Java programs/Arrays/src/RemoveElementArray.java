import java.util.Arrays;
//question 27
//Remove element from an array
public class RemoveElementArray {

    static int removeElement(int[] nums, int val) {
        int k = 0;
            for (int i = 0; i < nums.length; i++) {
            if (nums[i] != val){
                nums[k] = nums[i];
                k++;
                }

            }
            return k;
    }
    public static void main(String[] args) {

        int[] a = {0,1,2,2,3,0,4,2};
        int b=removeElement(a,2);
        System.out.println(b);
    }
}
