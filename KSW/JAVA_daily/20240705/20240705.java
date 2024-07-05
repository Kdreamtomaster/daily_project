import java.util.*;
class Solution {
    public int[] solution(int n) {
        
        
        ArrayList<Integer> answer2 = new ArrayList<>();
        
        while (n != 1){
            if (n%2 == 0){
                
                answer2.add(Integer.valueOf(n));
                n = n / 2;
            }

            else {
                answer2.add(Integer.valueOf(n));
                n = 3*n+1;
            } 
        }
        answer2.add(n);
        int[] answer = new int[answer2.size()];
        int size=0;
        for(Integer temp : answer2){
            answer[size++] = temp;
        }

        return answer;
    }
}

// 드럽지만 일단 풀었다. 자바 자료형 바꾸는거 좀 익숙해져야할듯