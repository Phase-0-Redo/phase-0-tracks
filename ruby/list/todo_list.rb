class TodoList
  attr_reader :get_items
  def initialize(array)
    @get_items = array
  end

  def add_item(chore)
    @get_items << chore
  end

  def delete_item(chore)
    @get_items.delete(chore)
  end

  def get_item(index)
    @get_items[index]
  end
end