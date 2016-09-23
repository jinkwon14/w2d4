class MyQueue
  def initalize
    @store = []
  end

  def enqueue(element)
    @store.unshift(element)
  end

  def dequeue
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
