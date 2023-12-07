# 編號：CANDY-018
# 程式語言：Ruby
# 題目：實作一個可以印出隨機整數的函數

def randomNumber(min, max=0)
 (rand()*(max-min)).floor + min
end

p randomNumber(50) # 隨機印出 0 ~ 49 之間的任何一個數字
p randomNumber(5, 30) # 隨機印出 5 ~ 29 之間的任何一個數字

