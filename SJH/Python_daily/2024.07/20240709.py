# 분수의 덧셈

# 문제 설명
# 첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1, 두 번째 분수의 분자와 분모를 뜻하는 numer2, denom2가 매개변수로 주어집니다. 
# 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

# 제한사항
# 0 <numer1, denom1, numer2, denom2 < 1,000
# 입출력 예
# numer1	denom1	numer2	denom2	result
# 1	           2	    3	    4	[5, 4]
# 9	            2	    1	    3	[29, 6]

# 답
def solution(numer1, denom1, numer2, denom2):
    a = numer1 * denom2 + numer2 * denom1
    b = denom1 * denom2

    gcd = 1
    for i in range(min(a, b), 0, -1):
        if a % i == 0 and b % i == 0:
            gcd = i
            break
            
    a //= gcd
    b //= gcd
    return a, b

# 며칠 코테 안 풀었다고 어렵게 느껴지네