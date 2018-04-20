class Csv < ApplicationRecord

  validates :name, :date, :number, :description, presence: true

  def nice_time
    self.date.strftime('%A, %B %-d, %Y')
  end
end
