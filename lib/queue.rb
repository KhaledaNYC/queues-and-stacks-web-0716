require_relative 'stack'

class Queue
  def initialize
    @in = Stack.new
    @out = Stack.new
  end
#pushes data into the first stack
  def enqueue(data)
    @in.push(data)
  end

  def dequeue
    # checks size of the out stack
    if @out.size == 0
      #as long as the in stack is greater than zero
      while @in.size > 0
      #remove the last element from in stack
        last_in = @in.pop
      #push last element of in stack into outstack
        @out.push(last_in)
      end
    end
    #as soon as in stack is less than zero return last element of out stack which turns out to be the first el of the in stack (initially)
    @out.pop
  end
end
