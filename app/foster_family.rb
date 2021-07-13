class FosterFamily < ActiveRecord::Base

    has_many :fosters
    has_many :children, through: :fosters


end