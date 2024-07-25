def solution(my_string, overwrite_string, s):
    answer = ''
    
    if len(my_string[s:])<=len(overwrite_string):
        answer=my_string[:s]+overwrite_string
    else:
        answer = my_string[:s]+overwrite_string+my_string[s+len(overwrite_string):]
  
    return answer

# 추가한 문자열이 원래 문자열 보다 커지는지 안커지는지 여부가 중요하다. 
# 단순 이어붙이기인지 가운데에 꽂아넣어야 하는지 상황을 구분해야 하기 때문이다.
# 문자열 슬라이싱 잘 모르겠어서 한번더 구글링 해본건 아직도 연습이 필요하다는 증거다.