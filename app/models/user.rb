class User < ApplicationRecord
 validates :name, presence: true
 validates :identification, presence: true
 validates :email, presence: true
 validates :main_phone, presence: true
end
