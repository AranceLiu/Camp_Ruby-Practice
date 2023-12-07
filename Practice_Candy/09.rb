# 編號：CANDY-009
# 程式語言：Ruby
# 題目：移除網址中的錨點（Anchor）

def removeAnchor(url) 
  url.split("#").first
end

p removeAnchor("5xcampus.com"); # 印出 5xcampus.com
p removeAnchor("5xcampus.com/#about"); # 印出 5xcampus.com/
p removeAnchor("5xcampus.com/courses/?page=1#about"); # 印出 5xcampus.com/courses/?page=1