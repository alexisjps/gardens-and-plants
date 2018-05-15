class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
