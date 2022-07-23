
/*
Given a sorted array of distinct integers and a target value, return the index if the target is found.
 If not, return the index where it would be if it were inserted in order.

 */

public class SearchInsertPosition {

    static int searchInsert(int[] nums, int target) {

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] >= target){
                return i;
            }
        }
        return nums.length;
    }
    public static void main(String[] args) {
        int[] a = {1,3,5,6};
        int b =searchInsert(a,7);
        System.out.println(b);

    }
}
