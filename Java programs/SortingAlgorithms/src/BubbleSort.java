//Bubble Sort
//ascending order

import java.util.Arrays;

public class BubbleSort {

    static int[] bubbleSort(int[] array) {

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
        return array;
    }

    public static void main(String[] args) {
        int[] a = {5, 3, 2, 0, 1};
        System.out.println(Arrays.toString(bubbleSort(a)));
    }
}