class Cidade < ActiveRecord::Base
  has_many :users

  validates_presence_of :nome
  validates_uniqueness_of :nome
  validates_length_of :nome, minimum: 5, maximum: 50, allow_blank: false
end
