class Item < ApplicationRecord
  has_many :stocks
  enum type: { component_set: 0}
end
