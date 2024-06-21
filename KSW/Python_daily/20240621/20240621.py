# https://school.programmers.co.kr/learn/courses/30/lessons/181851

def solution(rank, attendance):
    answer = 0
    attendee_dict={}
    for i in range (0, len(rank)):
        if attendance[i] == True :
            attendee_dict[rank[i]]=i
    
    attendee_dict_key = list(attendee_dict.keys())
    
    sorted_attendee_dict = {i: attendee_dict[i] for i in sorted(attendee_dict_key)}
    ans_list=list(sorted_attendee_dict.values())
    answer = 10000*ans_list[0]+100*ans_list[1]+1*ans_list[2]
    
    
#뭔가 간단한걸 복잡하게 푼 느낌이다. 딕셔너리 정렬도 그렇고 내장함수가 아직도 헷갈리는거 보면 절대적인 양치기도 중요한듯.
