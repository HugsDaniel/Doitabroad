class University < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    has_many :reservations
    has_many :users, through: :reservations
end
