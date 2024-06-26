import java.math.BigInteger;
class Solution {
    public String solution(String a, String b) {
        String answer = "";
        BigInteger big_a = new BigInteger(a) ;
        BigInteger big_b = new BigInteger(b) ;
        BigInteger answer_bigint= big_a.add(big_b);
        answer = answer + answer_bigint.toString();
        return answer;
    }
}

// 자료형의 크기라, 나눠서 연산하는게 효율적인 풀이일것 같다.