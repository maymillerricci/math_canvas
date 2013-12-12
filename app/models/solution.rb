class Solution < ActiveRecord::Base
  belongs_to :problem
  # validates :username, :answer, :picture, presence: true
end
