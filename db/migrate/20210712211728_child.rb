class Child < ActiveRecord::Migration[5.2]
  def change
    create_table :childs do |t|
      t.string :name
      t.integer :age
      t.string :sex
    end
  end
end
