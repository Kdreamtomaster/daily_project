def solution(name, yearning, photo):
    answer = []
    name_yearning_dic = {}
    
    for index in range(len(name)): 
        #매칭 되는 사람이름에 따라 점수를 더할 수 있도록 사전에 딕셔너리로 만들기 
        name_yearning_dic[name[index]]=int(yearning[index]) # 덧셈연산이 가능하게끔 정수화 시켜놓기
    for photo_person_list in photo:
        result=0 
        # answer 한칸 한칸 채우기 전에 초기화 시켜놓아서 매칭되는 사람이 없을경우 0이 들어가도록 함 
        for photo_person in photo_person_list: # 이중 리스트이므로 헷갈리지 않게끔 변수 이름 짓기 
            if photo_person in list(name_yearning_dic.keys()):
                result+=name_yearning_dic[photo_person]
            else:
                pass
        answer.append(result)
    return answer