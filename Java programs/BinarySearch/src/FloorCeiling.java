
/*
Q: Find the floor , ceiling of the given target number, in a given sorted array.
leetcode q 766: choice 2
 */

//use binary search as it's a sorted array.

public class FloorCeiling {

    static int floorCeiling(int[] array,int target, int choice){

        int i=0,j = array.length-1,mid;
        while (i<= j){
            mid = i+((j-i))/2;
            if (array[mid] == target){
                return mid;
            } else if (target > array[mid]) {
                i = mid +1;
            }
            else {
                j = mid-1;
            }
        }
// modified part of binary search
        if (choice == 1){    //choice 1 is floor, choice 2 is ceiling

            return j;
        }
        else return i;
    }

    public static void main(String[] args) {
        int[] a ={1,2,3,4,5,9,10};
        int b= floorCeiling(a,6,2);
        System.out.println(b);
    }

}
