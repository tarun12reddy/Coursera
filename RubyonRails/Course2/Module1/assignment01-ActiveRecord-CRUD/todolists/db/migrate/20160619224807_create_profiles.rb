class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :gender
      t.string :birth_year
      t.string :integer
      t.string :first_nmae
      t.string :last_name

      t.timestamps null: false
    end
  end
end
