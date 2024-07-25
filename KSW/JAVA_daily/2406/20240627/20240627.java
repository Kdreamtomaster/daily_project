class Solution {
    public String solution(String cipher, int code) {
        String answer = "";
        char[] chars = cipher.toCharArray();
        
        for (int i=0;i<chars.length+1;i++){
            if (i != 0){
               if( i % code==0) {
                   answer= answer + String.valueOf(chars[i-1]);  
               }
            }
        }
        return answer;
    }
}
// 인덱스 수정안하고 깔끔하게 못푸나