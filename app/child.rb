class Child < ActiveRecord::Base
    has_many :adopts
    has_many :applicants, through: :adopts

    has_many :fosters
    has_many :foster_familys, through: :fosters

end