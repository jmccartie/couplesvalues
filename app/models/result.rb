class Result < ApplicationRecord
  RATINGS = {"Very Important" => 2, "Important" => 1, "Not Important" => 0}

  validates :data, presence: true


  def importance(val)
    self.data.select {|k, v| v == val}.sort_by { |key| key }.to_h
  end

  def compared_to(result)
    info = {same: [], different: []}
    result.data.each do |value, rating|
      if self.data[value] == rating
        info[:same] << value
      else
        info[:different] << value
      end
    end

    info
  end

end
