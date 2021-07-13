class Applicant < ActiveRecord::Base
has_many :adopts
has_many :children, through: :adopts

end