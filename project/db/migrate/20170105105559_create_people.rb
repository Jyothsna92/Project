class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.text :address
      t.string :phonenumber
      t.string :email
      t.text :activities

      t.timestamps
    end
  end
end
