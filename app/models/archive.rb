class Archive < ApplicationRecord
  belongs_to :hojavida
  has_one_attached :file
end
