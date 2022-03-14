class User < ApplicationRecord
  has_many :castings
  has_many :movies, through: :castings

  def movies_as_actor
    Movie.includes(:castings).where(castings: {actor_id: self.id})
  end

  def movies_as_director
    Movie.includes(:castings).where(castings: {director_id: self.id})
  end

  def movies_as_producer
    Movie.includes(:castings).where(castings: {producer_id: self.id})
  end  
end
