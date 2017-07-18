class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :employee_reports, dependent: :destroy
  has_many :employee_tasks, dependent: :destroy
  belongs_to :employee_user_level

  #validates_format_of :id, :with => /\A(((\d{2}((0[13578]|1[02])(0[1-9]|[12]\d|3[01])|(0[13456789]|1[012])(0[1-9]|[12]\d|30)|02(0[1-9]|1\d|2[0-8])))|([02468][048]|[13579][26])0229))(( |-)(\d{4})( |-)(\d{3})|(\d{7}))\z/
  
  validates_uniqueness_of :id, length: { minimum: 13, maximum: 13 }
  validates_uniqueness_of :email

  validates :name, presence: true
  validates :surname, presence: true
  validates :id, presence: true
  validates :email, presence: true

  def to_s
    self.name
  end
end
