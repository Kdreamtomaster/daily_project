# A 강조하기

# 문제 설명
# 문자열 myString이 주어집니다. 
# myString에서 알파벳 "a"가 등장하면 전부 "A"로 변환하고, "A"가 아닌 모든 대문자 알파벳은 소문자 알파벳으로 변환하여 return 하는 solution 함수를 완성하세요.

# 답
def solution(myString):
    return myString.lower().replace('a', 'A')



# 배열에서 문자열 대소문자 변환하기

# 문제 설명
# 문자열 배열 strArr가 주어집니다. 모든 원소가 알파벳으로만 이루어져 있을 때, 
# 배열에서 홀수번째 인덱스의 문자열은 모든 문자를 대문자로, 짝수번째 인덱스의 문자열은 모든 문자를 소문자로 바꿔서 반환하는 solution 함수를 완성해 주세요.

# 답
def solution(strArr):
    answer = []
    for i in range(len(strArr)):
        if i % 2 == 1:
            strArr[i] = strArr[i].upper()
            answer.append(strArr[i])
        else:
            strArr[i] = strArr[i].lower()
            answer.append(strArr[i])
    return answer

# 오늘은 그냥 2문제 올림