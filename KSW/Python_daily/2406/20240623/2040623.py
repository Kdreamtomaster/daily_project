def solution(price):
    answer = 0
    if price >= 500000:
        answer = (price * 0.8) * 10 // 10
    elif price < 500000 and price >= 300000:
        answer = (price * 0.9)  * 10 // 10
    elif price < 300000 and price >= 100000:
        answer = (price * 0.95) * 10 // 10
    else :
        answer = price
    return answer


# 이런 자릿수 연산의 경우 연산 순서가 결과값에 영향을 주니 주의