def solution(my_string):
    answer = []
    answer_upper = [0 for x in range(26)]
    answer_lower = [0 for x in range(26)]
    for my_char in my_string:
        if my_char.isupper() == True:
            answer_upper[int(ord(my_char))-65] +=1
            
        elif my_char.islower() == True:
            answer_lower[int(ord(my_char))-97] +=1
            
    answer = answer_upper + answer_lower
    return answer

# 소문자 ord 값 잘못 계산해서 틀림.