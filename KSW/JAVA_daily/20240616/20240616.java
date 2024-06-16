class Solution {
    public String solution(String code) {
        int mode = 0;
        String ret = "";
        String answer = "";
        for (int idx = 0; idx < code.length(); idx++) {
            if (code.charAt(idx) == '1') {              
                if (mode == 0) {
                    mode= 1;  
                }    
                else if (mode == 1) {
                    mode = 0;
                }               
            }                   
            else {      
                if (mode == 0) {                  
                    if (idx%2 == 0) {
                        ret = ret + code.charAt(idx);
                    }                   
                }                
                else if (mode == 1) {
                    
                    if (idx%2 == 1) {
                        ret = ret + code.charAt(idx);
                    }                    
                }                 
            }
        }

        if (ret == "") {
            answer = answer + "EMPTY";
        }
        
        else {
            answer = answer + ret;
        }
        
        return answer;
    }
}

// 자바로 푼 첫 코테 문제이다. 괄호 문법이랑 ; 쓰는게 어색해서 수정을 거듭하긴 했지만 
// 몇일 못푼만큼 앞으로 1.2배는 노력하자. 
// string 연산자는 익혀둘 수록 좋고, 자바의 경우 char, String 따옴표 구분해서 달아주는거 익혔다.