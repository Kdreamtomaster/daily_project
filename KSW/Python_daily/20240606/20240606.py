str = input()
new_str=""
for spell in str:
    if spell.isupper() == True:
        new_str+=spell.lower()
        
    elif spell.islower() ==True: 
        new_str+=spell.upper()
print(new_str)
# 거의 다 풀어놓고 += 안써서 결과가 안나오는걸 질문하기 들어가고 나서야 꺠달음
