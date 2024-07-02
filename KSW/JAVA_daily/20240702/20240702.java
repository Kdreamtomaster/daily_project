class Solution {
    boolean solution(String s) {
        boolean answer = true;
        
        int[] pyArray = {0,0};
        char[] charArray = s.toCharArray();
        for(int i = 0; i < charArray.length; i++){
            if (charArray[i] == 'p' | charArray[i] == 'P'){
                pyArray[0] += 1;
            }
            else if (charArray[i] == 'y' | charArray[i] == 'Y'){
                pyArray[1] += 1;
            }
        }
        if (pyArray[0] == pyArray[1]){
            answer = true;
        }
        else {
            answer = false;
        }
        return answer;
    }
}
// java array 선언하는 것도 익숙해지자, 자료구조의 시작이다.