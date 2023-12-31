# 編號：CANDY-004
# 程式語言：Ruby
# 題目：完成函數的內容，把傳進去的秒數變成平常人類看的懂的時間格式

def humanReadableTimer(seconds) 
  hours = seconds/60**2
  mins = seconds % 60**2 / 60
  remain_sec = (seconds % 60**2) % 60

  return "#{"%02d" % hours}:#{"%02d" % mins}:#{"%02d" % remain_sec}"
end

p humanReadableTimer(0) # 印出 00:00:00
p humanReadableTimer(59) # 印出 00:00:59
p humanReadableTimer(60) # 印出 00:01:00
p humanReadableTimer(90) # 印出 00:01:30
p humanReadableTimer(3599) # 印出 00:59:59
p humanReadableTimer(3600) # 印出 01:00:00
p humanReadableTimer(45296) # 印出 12:34:56
p humanReadableTimer(86399) # 印出 23:59:59
p humanReadableTimer(86400) # 印出 24:00:00
p humanReadableTimer(359999) # 印出 99:59:59