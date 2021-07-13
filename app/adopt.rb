class Adopt < ActiveRecord::Base
    belongs_to :child
    belongs_to :applicant

end