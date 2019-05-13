class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    self.where("rating = ?", maximum(:rating))[0]
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    self.where("rating = ?", minimum(:rating))[0]
  end
  
  def self.ratings_sum
    self.sum(:ratings)
  end
end