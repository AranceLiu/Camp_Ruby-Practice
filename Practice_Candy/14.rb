# 編號：CANDY-014
# 程式語言：Ruby
# 題目：把鄰近的重複值去除，但仍照原本的順序排序
# 範例："AAABBBDDDAABBBCC" -> ['A', 'B', 'D', 'A', 'B', 'C']

def uniqueOrder(sequence) 
  sequence = sequence.is_a?(Array) ? sequence : sequence.split("")
  sequence.filter.each.with_index {|ele, idx| ele != sequence[idx+1]}
end

p uniqueOrder("AABCC"); # [ 'A', 'B', 'C']
p uniqueOrder("AAABBBCCBCC"); # [ 'A', 'B', 'C', 'B', 'C']
p uniqueOrder([1, 2, 1, 2, 1]); # [ 1, 2, 1, 2, 1 ]
p uniqueOrder([1, 1, 1, 2, 2, 2, 1]); # [1, 2, 1]