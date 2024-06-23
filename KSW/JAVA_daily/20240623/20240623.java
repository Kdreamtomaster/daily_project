class Solution {
    public int solution(int[] array, int n) {
        int answer = 0;
        for ( int i=0 ; i < array.length ; i++ ){
            if (array[i] == n){
                answer = answer + 1;
            }
        }
        return answer;
    }
}

// for loop 조건문 중간중간에 ; 쓰는거 모르는건 부끄러운거다..