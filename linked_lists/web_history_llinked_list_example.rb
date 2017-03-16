# Real World Example for Web history. Since its a singly linked list it can only go forward, not backwards.

class WebHistory
  attr_reader :current_page, :head

  def initialize(val)
    @head = Page.new(val, nil)
  end

  def new_page(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    @current_page = current.next = Page.new(val, nil)
  end

  def return_history
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
  end
end

class Page
  attr_accessor :url, :next

  def initialize(url, next_page)
    @a_url = url
    @next = next_page
  end
end

require "pry"; binding.pry
p ""
