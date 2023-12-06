# 編號：CANDY-002
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元

chars1 = ["a", "b", "c", "d", "f", "g"]
chars2 = ["O", "Q", "R", "S"]

def missingChar(chars) 
  chars_ord = chars.map{|ele| ele.ord}

  chars_full = (chars_ord[0]..chars_ord[-1]).to_a

  dif_arr = chars_full - chars_ord

  return dif_arr[0].chr
end

p missingChar(chars1) # 印出 e
p missingChar(chars2) # 印出 P

