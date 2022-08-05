import java.util.Arrays;
import java.util.Scanner;

public class test {

    static int beautyContest(int k, int []a, int []b) {
        // Write your code here.
        int i =0;
        int j=1;
int count=0;
        while ( i < a.length ){

            if (a[i] -b[i]>b[j]-a[j])
            {
                count++;
                j++;
            }
            else j++;
            if (j== a.length) {
                if (i+2<a.length) {
                    j = i + 2;
                    i++;
                }
                else break;
            }
        }
        if (count>=k)
            return 1;
        return 0;
    }

    public static void main(String[] args) {
        int[] a = {4,1,7,2};
        int[] b ={2,1,3,4};
        System.out.println(beautyContest(4,a,b));
    }
}

//    static int pkString(int k, String s) {
//        // Write your code here.
//        Scanner input =  new Scanner(System.in);
//int count = 0;
//        for (int i = 0; i < s.length(); i++) {
//            if (s.charAt(i) == 'p'){
//                count++;
//
//            }
//        }
//        if (count==k){
//            return 1;
//        }
//        return 0;
//        }


//    static long bitReduction(int []a) {
//        // Write your code here.
//        int temp,sum =0;
//        for (int i = 0; i < a.length; i++) {
//
//            temp = a[i];
//            int count = 0;
//            while (true) {
//                a[i] >>= 1;
//                if (a[i]!=0)
//                    ++count;
//                else {
//                    break;
//                }
//            }
//            sum += temp & ~(1 << count);
//            System.out.println(temp);
//             }
//        return sum;
//        }

//        int[] a = {5,2,6,3,1};
//        System.out.println(bitReduction(a));

//    static int cyclicString(String a, String b) {
//        // Write your code here.
//        char c,d;
//        int count =0;
//        for (int i = 0; i < a.length(); i++) {
//            if (a.charAt(i) != b.charAt(i)){
//                c = a.charAt(i);
//                d = b.charAt(i);
//                int p =0;
//                while (p < 13 && c!=d){
//                    p++;
//                    if(c == 'y')
//                        c = 'a';
//                    else if (c == 'z') {
//                        c = 'b';
//                    }
//                    else c +=2;
//
//                }
//                if (c==d)
//                    count++;
//            }
//            else count++;
//        }
//        if (count==b.length())
//            return 1;
//        return 0;
//    }

//System.out.println(cyclicString("y","a"));

  //  static int minDistance(int[][] a) {
//
//
//        int ans= 0;
//
//        // Write your code here.
//        for (int i = 0; i < a.length; i++) {
//            int sum = 0;
//            for (int j = 0; j < a.length; j++) {
//                sum += Math.abs(a[j][0] - a[i][0]) +Math.abs(a[j][1] - a[i][1]);
//            }
//            if (i ==0)
//                ans = sum;
//            else if (sum>ans)
//                continue;
//            else ans=sum;
//        }
//
//        return  ans;
//    }
//
//    public static void main(String[] args) {
//        int[][] a = {{1,1},{2,3}, {1,4},{2,2}};
//
//
//    }