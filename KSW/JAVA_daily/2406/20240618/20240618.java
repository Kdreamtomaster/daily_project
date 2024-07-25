import java.util.Arrays;

class Solution {
    public int[] solution(int[] arr) {
        int[] stk = {};
        int i=0;
        while (i < arr.length) {
            if (stk.length==0) {
                stk = Arrays.copyOf(stk, stk.length + 1);
                stk[stk.length - 1] = arr[i]; 
                i = i + 1;
            }
            else if (stk[stk.length - 1] < arr[i])   {
                stk = Arrays.copyOf(stk, stk.length + 1);
                stk[stk.length - 1] = arr[i]; 
                i = i + 1;
            }
            else {
                stk = Arrays.copyOf(stk, stk.length - 1);
            }
            
        }
        return stk;
    }
}
// 파이썬이에서의 리스트와 다르게 자바의 기본 어레이는 길이가 고정된 속성때문에 복사를 떠서 길이를 수정하는 번거로운 작업이 있었다.