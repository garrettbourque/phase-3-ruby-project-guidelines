class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.string :sex
    end
  end
end
