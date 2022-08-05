//Bubble Sort
//ascending order

import java.util.Arrays;

public class Sort {

    static void bubbleSort(int[] array) {

        boolean swapped;
        int length = array.length;
        for (int i = 0; i < array.length - 1; i++) {
            swapped = false;
            for (int j = 0; j < length - 1; j++) {
                if (array[j] > array[j + 1]) { //change the cond for desc
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                    swapped = true;
                }
            }
            //if no elements are swapped in one complete iteration, it means that the array is sorted.
            if (!swapped) {
                break;
            }
            length -= 1;
        }

    }

    static  void selectionSort(int[] array){
        for (int i = 0; i < array.length; i++) {
            int end = array.length-i-1;

            int max = getMaxIndex(array,0,end);
            swap(array,max,end);

        }
    }

    static void insertionSort(int[] array){

        for (int i = 0; i <= array.length - 2; i++) {
            for (int j = i+1; j>0 ; j--) {
                if (array[j] < array[j-1]){
                    swap(array,j,j-1);
                }
                else break;
            }
            
        }
    }


    static void swap(int[] array, int i, int j){
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    static int getMaxIndex(int[] array, int start, int end){
        int max = start;
        for (int i = 0; i <=end ; i++) {
            if (array[max]<array[i]){
                max=i;
            }
        }
        return max;
    }

    public static void main(String[] args) {

        int[] a = {5, 3, 2, 0, 1};
        insertionSort(a);
        System.out.println(Arrays.toString(a));
    }
}