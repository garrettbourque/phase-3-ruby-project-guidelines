class Foster < ActiveRecord::Migration[5.2]
  def change
    create_table :fosters do |t|

    t.integer :foster_family_id
    t.integer :child_id
    t.string :status
  end
  end
end
