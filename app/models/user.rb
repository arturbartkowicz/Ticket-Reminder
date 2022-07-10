class User < ApplicationRecord
  ### Associations #################################################################################

  has_many :tickets, dependent: :destroy

  ### Validations ##################################################################################

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Must be a valid email" }
  validates :first_name, :last_name, :due_date_reminder, :time_zone, presence: true

  ### Instance Methods #############################################################################

  def full_name
    "#{first_name} #{last_name}"
  end

  def user_name_id
    [full_name, id]
  end

  def self.all_users_name_id
    User.all.map {|u| u.user_name_id}
  end
end
