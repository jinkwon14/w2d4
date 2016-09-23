class MyStack

  def initalize(stack = [])
    @store = stack
  end

  def push(element)
    @store.push(element)
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end
