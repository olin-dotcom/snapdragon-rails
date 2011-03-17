class Burst < ActiveRecord::Base
  has_many :snaps
  belongs_to :event

  has_many :users, :through => :snaps
end
