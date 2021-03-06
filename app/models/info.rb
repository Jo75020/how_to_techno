class Info < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :phone, presence: true, format: { with: /([0]{1})([6-7]{1})[0-9]{8}/ }
  validates :city, presence: true
  validates :birthday, presence: true
  validates :email, presence: true, format: { with: /[a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/ }

end
