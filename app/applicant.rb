class Applicant < ActiveRecord::Base
has_many :adopts
has_many :childs, thorugh: :adopts

end