class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates_length_of :phone_number, :maximum => 10
  validates_length_of :phone_number, :minimum => 10
end
