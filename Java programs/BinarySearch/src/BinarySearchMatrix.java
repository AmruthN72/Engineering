import java.util.Arrays;

/*
Two D binary search in a row and column wise sorted matrix
 */
public class BinarySearchMatrix {

    static int[] binarySearchMatrix(int[][] arr, int target){

        int r=0, c = arr[0].length-1 ;

        while (r < arr.length && c>=0){
            if (arr[r][c] == target)
                return new int[]{r,c};

            else if (arr[r][c] < target)
                r++;
            else if (arr[r][c] > target)
                c--;
        }
            return new int[]{-1,-1};
    }

    public static void main(String[] args) {
        int[][] a = {{10,20,30,40},
                {15,26,36,42},
                {28,29,37,49},
                {33,34,38,50}};

        System.out.println(Arrays.toString(binarySearchMatrix(a,37)));
    }
}
