
/*
Leetcode question 852 , 1095, 162:
Given a mountain array arr,
return the index i such that
 arr[0] < arr[1] < ... < arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1].

You must solve it in O(log(arr.length)) time complexity.
 */

public class PeakIndexInMountainArray {

    static int peakIndexInMountainArray(int[] arr) {
        int i=0,j = arr.length-1,mid =0 ;
        while (i!= j){
            mid = i+((j-i))/2;

            if (arr[mid] > arr[mid+1]) {
                j= mid;
            }
            else if (arr[mid] < arr[mid+1])
                i = mid +1;
            }

        return i;
}

    public static void main(String[] args) {
        int[] a ={0,2,1,0};
        System.out.println(peakIndexInMountainArray(a));

    }
}

