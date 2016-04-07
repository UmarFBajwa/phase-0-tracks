class TodoList
  def initialize(todo1, todo2)
    @todo1 = todo1
    @todo2 = todo2
    @list = []
    @list << todo1
    @list << todo2
      def get_items
        @list
      end
  end

  def add_item(item)
    @list.push(item)
    def get_items
    @list 
    end
  end

  def delete_item(item)
    @list.delete(item)
    def get_items
    @list 
    end
  end

  def get_item(index)
    @list[index]
  end 
end