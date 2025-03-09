class CreateCusers < ActiveRecord::Migration[8.0]
  def change
    create_table :cusers do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :mobile
      t.integer :gender

      t.timestamps
    end
  end
end
