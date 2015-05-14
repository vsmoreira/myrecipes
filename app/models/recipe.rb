class Recipe < ActiveRecord::Base
  belongs_to :chef
  validates :chef_id, presence: true
  validates :name, presence: true, length: { within: 5..100 }
  validates :summary, presence: true, length: { within: 10..150 }
  validates :description, presence: true, length: { within: 20..500 }
end
  
