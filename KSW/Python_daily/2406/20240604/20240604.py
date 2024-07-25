def solution(q, r, code):
    answer = ''
    for code_index in range (0,len(code)):
        if code_index % q == r :
             answer+=code[code_index]
    return answer
#  주어진 나머지 값이 나오는 인덱스만 더하기로 넣으면 되는 문제였다.
#  조금 허무하게 풀링 문제인데 딱히 예외 사항도 없었다. 
#  문자열 관련 문제는 몇 문제 더 풀어봐도 되겠다.