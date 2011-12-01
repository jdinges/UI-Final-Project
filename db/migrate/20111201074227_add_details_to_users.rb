class AddDetailsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :office
      t.string :department
      t.string :phone_number
    end
  end
end
