/*Question 26:
Given an integer array nums sorted in non-decreasing order,
 remove the duplicates in-place such that each unique element appears only once.
 The relative order of the elements should be kept the same.

Since it is impossible to change the length of the array in some languages,
you must instead have the result be placed in the first part of the array nums.
 More formally, if there are k elements after removing the duplicates,
 then the first k elements of nums should hold the final result.
 It does not matter what you leave beyond the first k elements.
Return k after placing the final result in the first k slots of nums.
Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
 */

public class RemoveDuplicateIntArray {

    static int removeDuplicates(int[] nums) {

        int temp = 0;
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] != nums[temp]) {
                nums[++temp] = nums[i];
            }
        }
        return temp + 1;
    }

    public static void main(String[] args) {

        int[] c= {1,1,1,2,4,5,6};
        int b =removeDuplicates(c);
        System.out.println();
        System.out.println(b);

    }
}
