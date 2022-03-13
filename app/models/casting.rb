class Casting < ApplicationRecord
  belongs_to :actor, class_name: "User", foreign_key: :actor_id, optional: true
  belongs_to :producer, class_name: "User", foreign_key: :producer_id, optional: true
  belongs_to :director, class_name: "User", foreign_key: :director_id, optional: true
  belongs_to :movie
end
