class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth

      t.timestamps
    end
  end
end
