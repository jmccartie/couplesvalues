class Result < ApplicationRecord
  validates :data, presence: true


  def importance(val)
    self.data.select {|k, v| v == val}.sort_by { |key| key }.to_h
  end

end
