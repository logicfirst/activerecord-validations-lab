class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_length_of :content, :minimum => 250
  validates_length_of :summary, :maximum => 250
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  include ActiveModel::Validations
  validates_with TitleValidator

end
