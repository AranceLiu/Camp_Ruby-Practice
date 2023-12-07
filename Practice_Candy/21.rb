# 編號：CANDY-021
# 程式語言：Ruby
# 題目：實作 Stack 資料結構

class Stack 
  def initialize
    @arr = []
  end

  def push(element = nil)
    @arr.push(element) if element != nil
  end

  def size
    @arr.length
  end

  def pop()
    @arr.pop
  end
end

stack = Stack.new;
stack.push(123);
stack.push(456);
stack.push();
p stack.size # 印出 2

item = stack.pop() # 取出元素
p item # 印出 456

stack.pop() # 繼續取出元素
p stack.size # 印出 0