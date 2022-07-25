public class BinarySearch {
    static int binarySearch(int[] array,int target){

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
        return -1;
    }
    public static void main(String[] args) {
        //sorted array must be passed for binary search
        int[] a ={1,2,3,4,5,9};
       int b= binarySearch(a,9);
        System.out.println(b);
    }
}