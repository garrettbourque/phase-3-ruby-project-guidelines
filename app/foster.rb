class Foster < ActiveRecord::Base
    belongs_to :child
    belongs_to :foster_family

end