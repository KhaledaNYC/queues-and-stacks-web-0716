class Stack
  def initialize
    @stack = []
  end

  def push(data)
    @stack.push(data)
    self
  end

  def pop
    @stack.pop
  end

  def size
    @stack.length
  end

end
