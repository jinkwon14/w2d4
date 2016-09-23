require_relative 'my_stack'

class StackQueue

  #push
  #pop
  #size
  #peek
  #empty?
  def initalize(stack)
    @full_stack = MyStack.new(stack)
    @empty_stack = MyStack.new
  end

  def enqueue(element)
    #move everything to empty stack
    #push the element into full stack
    #push everything back to full stack

    @full_stack.size.times do
      @empty_stack.push(@full_stack.pop)
    end

    @full_stack.push(element)

    @empty_stack.size.times do
      @full_stack.push(@empty_stack.pop)
    end
  end

  def dequeue
    @full_stack.pop
  end

  def size
    @full_stack.size
  end

  def empty?
    @full_stack.empty?
  end

end
