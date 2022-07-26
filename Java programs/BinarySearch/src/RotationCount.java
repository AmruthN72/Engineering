
/*
Given an array arr[] of size N having distinct numbers sorted in increasing order
and the array has been rotated (clockwise) k number of times,
the task is to find the value of k.
 */
public class RotationCount {

    static int rotationCount(int[] array){

        int i=0,j = array.length-1,mid =-1;
        while (i!=j){
            mid = i+((j-i))/2;

            if (array[mid+1] < array[mid]){
                return mid+1;

            } else if (array[i] > array[mid]) {
                j = mid ;
            }
            else if (array[i] <array[mid]){
                i=mid;
            }
        }
        return mid+1;

    }

    public static void main(String[] args) {
        int[] a = {8 , 10 , 1 ,2 ,3 ,6 ,7};
        System.out.println(rotationCount(a));
    }

}
