class TitleValidator < ActiveModel::Validator

  def validate(record)
    unless record.to_s.include?("Won't Believe")
      record.errors[:title] << "Not Click-baity enough"
    end
  end
end