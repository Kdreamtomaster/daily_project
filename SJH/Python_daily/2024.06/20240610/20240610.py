# 가장 큰 수 찾기

# 문제 설명
# 정수 배열 array가 매개변수로 주어질 때, 
# 가장 큰 수와 그 수의 인덱스를 담은 배열을 return 하도록 solution 함수를 완성해보세요.

# 제한사항
# 1 ≤ array의 길이 ≤ 100
# 0 ≤ array 원소 ≤ 1,000
# array에 중복된 숫자는 없습니다.
# 입출력 예
# array	            result
# [1, 8, 3]	        [8, 1]
# [9, 10, 11, 8]	[11, 2]
# 입출력 예 설명
# 입출력 예 #1

# 1, 8, 3 중 가장 큰 수는 8이고 인덱스 1에 있습니다.
# 입출력 예 #2

# 9, 10, 11, 8 중 가장 큰 수는 11이고 인덱스 2에 있습니다.

# 답
def solution(array):
    answer = []
    max_index = 0
    for i in range(len(array)):
        if max(array) == array[i]:
            answer = [max(array), i]
    return answer

# 나는 이 문제를 리스트 내의 숫자들을 인덱스 0부터 1씩 커지면서 비교하는 코드를 짜고싶었는데 잘 안 돼서 이렇게 했다.
# 다른 사람의 코드를 봐도 내가 원하는 코드는 찾지 못 했다.