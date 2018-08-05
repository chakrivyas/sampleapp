class CreateUsers < ActiveRecord::Migration[5.1]

  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :confirmpassword
      t.integer :mobilenumber
      t.boolean :gender
      t.integer :adhaarnumber
      t.integer :pincode
      t.string :martialstatus


      t.timestamps
    end
  end
end
