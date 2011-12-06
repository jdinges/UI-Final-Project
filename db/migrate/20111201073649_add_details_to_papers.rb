class AddDetailsToPapers < ActiveRecord::Migration
  def change
    change_table :papers do |t|
      t.string :link
      t.string :authors
      t.string :publisher
      t.string :date_published
      t.integer :page_count
    end
  end
end
