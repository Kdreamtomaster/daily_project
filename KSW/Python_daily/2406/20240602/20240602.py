def solution(arr, query):
    answer = []
    answer_list = [arr]
    i=0
    for q_index in range(0, len(query)):
                    
        if q_index % 2 == 0:
            answer_list.append(answer_list[i][:query[q_index]+1])
            i+=1
        else:
            answer_list.append(answer_list[i][query[q_index]:])
            i+=1
    for number in answer_list[i]:
        answer.append(number)
    return answer


