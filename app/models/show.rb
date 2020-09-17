class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    interim_rating = self.highest_rating
    show = Show.find_by(rating: interim_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    interim_rating = self.lowest_rating
    show = Show.find_by(rating: interim_rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    popular_shows = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(name::asc)
  end

end
