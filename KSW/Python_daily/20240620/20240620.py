# https://school.programmers.co.kr/learn/courses/30/lessons/12906
def solution(arr):
    answer = []
    # [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    for idx in range(0,len(arr)) :
        if idx == 0 :
            answer.append(arr[idx])
        else:
            if arr[idx] != arr[idx-1]:
                answer.append(arr[idx])    
    return answer

# 일단은 리스트 인덱스로 풀어보았는데 스택으로는 어떻게 풀려나.