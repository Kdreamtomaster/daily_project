// 연산 ⊕는 두 정수에 대한 연산으로 두 정수를 붙여서 쓴 값을 반환합니다. 예를 들면 다음과 같습니다.

// 12 ⊕ 3 = 123
// 3 ⊕ 12 = 312
// 양의 정수 a와 b가 주어졌을 때, a ⊕ b와 2 * a * b 중 더 큰 값을 return하는 solution 함수를 완성해 주세요.

// 단, a ⊕ b와 2 * a * b가 같으면 a ⊕ b를 return 합니다.

// 제한사항
// 1 ≤ a, b < 10,000

// 입출력 예
// a	b	result
// 2	91	364
// 91	2	912

class Solution {
    public int solution(int a, int b) {
        int answer = 0;
        String sum_str = String.valueOf(a)+String.valueOf(b);
        int sum_str_int = Integer.parseInt(sum_str);
        if (sum_str_int >= (2 * a * b )){
            answer = sum_str_int;
        }
        else {
            answer = 2 * a * b ;
        }
        return answer;
    }
}

// Integer.parseInt([이 안에는 String])
// Integer.valueOf(String) 이 경우에는 Integer 반환하니 헷갈리지 않도록 유의
// String -> int String.valueOf([이안에 int])