class UsersController < ApplicationController
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
