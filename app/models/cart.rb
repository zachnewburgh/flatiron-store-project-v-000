class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user
  has_one :order

  def total
    items.map {|item| item.price}.inject(:+)
  end

  def add_item(item)
    li = line_items.find_or_initialize_by(item_id: item)
    li.quantity = 1 unless !li.quantity.nil?
    li
  end

  def checkout
    status = "submitted"
  end

end
