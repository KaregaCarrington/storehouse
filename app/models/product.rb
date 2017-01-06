class Product < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  def self.search(search)
    if search
      where(["title OR description LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
