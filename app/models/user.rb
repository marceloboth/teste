class User < ActiveRecord::Base
  belongs_to :cidade

  validates_presence_of :name, :age
  validates_uniqueness_of :name
  validates_length_of :name, minimum: 5, maximum: 50, allow_blank: false
  validates_numericality_of :age, greater_than: 17
end
