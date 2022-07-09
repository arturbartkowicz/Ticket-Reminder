class User < ApplicationRecord
  # has_secure_password
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Must be a valid email" }
  validates :first_name, :last_name, :due_date_reminder, :time_zone, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
