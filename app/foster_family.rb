class FosterFamily < ActiveRecord::Base

    has_many :fosters
    has_many :childs, through: :fosters


end