class Contact < ApplicationRecord
    has_one_attached :picture
    validates :name, :email, presence: true
    validates :email, uniqueness: true
end
