def solution(seoul):
    kim_index=0
    kim_index=seoul.index('Kim')
    answer = f'김서방은 {kim_index}에 있다'
    return answer

# 내장 함수 안쓰고 풀어보면?
# def solution(seoul):
#     kim_index=0
#     for name in seoul:
#         if name == 'Kim':
#             break
#         else:
#             kim_index+=1
#     answer = f'김서방은 {kim_index}에 있다'
#     return answer