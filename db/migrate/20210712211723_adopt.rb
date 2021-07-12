class Adopt < ActiveRecord::Migration[5.2]
  def change
    create_table :adopts do |t|
      t.integer :applicant_id
      t.integer :child_id
      t.string :status
    end
    
  end
end
