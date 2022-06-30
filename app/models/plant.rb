class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags

  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags

  validates :name, presence: true
end
