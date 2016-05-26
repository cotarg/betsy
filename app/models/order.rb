class Order < ActiveRecord::Base
  has_many :orderitems
  belongs_to :user

  serialize :shipping_method, JSON
end
