class Applicant < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :name
      t.integer :income
      t.string :address
    end
  end
end
