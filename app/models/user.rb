class User < ActiveRecord::Base
  has_one :credential
  has_many :snaps
  has_many :events, :through => :snaps
  has_many :bursts, :through => :snaps
end
