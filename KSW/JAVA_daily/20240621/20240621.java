class Solution {
    public String solution(String my_string, int[][] queries) {
        String answer = "";
        
        char[] my_charArray = my_string.toCharArray();
        for (int i = 0; i < queries.length; i++) {
            int start_idx = queries[i][0];
            int end_idx = queries[i][1];
            int condition = ((end_idx-start_idx) % 2);
            int k_condition = ((end_idx-start_idx) / 2);
            if (condition == 0){
                for (int k = 0; k < k_condition ; k++){
                    char first_tmp = my_charArray[start_idx+k];
                    char second_tmp = my_charArray[end_idx-k];
                    my_charArray[start_idx+k] = second_tmp;
                    my_charArray[end_idx-k] = first_tmp;
                }         
            }
            else {
                for (int j = 0; j < k_condition+1 ; j++){
                    char first_tmp = my_charArray[start_idx+j];
                    char second_tmp = my_charArray[end_idx-j];
                    my_charArray[start_idx+j] = second_tmp;
                    my_charArray[end_idx-j] = first_tmp;
                }   
            }

        }
        answer = new String(my_charArray);
        
        return answer;
    }
}

// 현타 오지게 오네 임시값도 제대로 못쓰고 나머지랑 몫도 구분못해서 해멨다.