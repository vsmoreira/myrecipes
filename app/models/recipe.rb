class Recipe < ActiveRecord::Base
  validates :name, presence: true, length: { within: 5..100 }
  validates :summary, presence: true, length: { within: 10..150 }
  validates :description, presence: true, length: { within: 20..500 }
end
  
