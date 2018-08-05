class User < ApplicationRecord

validates  :name , presence: true
validates  :email , presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
validates  :mobilenumber , presence: true,
                           numericality: true,
                           length: {minimum: 4 , maximum: 15}
validates :password, confirmation: true


end
