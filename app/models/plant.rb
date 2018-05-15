class Plant < ApplicationRecord
  belongs_to :garden # adds a presence validation on the garden_id foreign key

  validates :name, presence: true
end
