# 編號：CANDY-013
# 程式語言：Ruby
# 題目：根據台灣財政部所提供的公司統編驗證規則，計算統一編號是否正確
# https://www.fia.gov.tw/singlehtml/3?cntId=c4d9cff38c8642ef8872774ee9987283

def isValidVatNumber(vat) 
  logic = [1, 2, 1, 2, 1, 2, 4, 1]
  vat_s = vat.to_i.digits.reverse

  result = logic.zip(vat_s).map {|x,y| (x*y).digits.sum.digits.sum}.sum

  vat_s[6] == 7 ? result % 5 == 0 || (result-1) % 5 == 0 : result % 5 == 0
  
end

p isValidVatNumber("10458575"); # true
p isValidVatNumber("88117125"); # true
p isValidVatNumber("53212539"); # true
p isValidVatNumber("88117126"); # false




