class FosterFamily < ActiveRecord::Base

    has_many :fosters
    has_many :childs, thorugh: :fosters


end