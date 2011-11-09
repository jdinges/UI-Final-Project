class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.text :body
      t.references :professor

      t.timestamps
    end
    add_index :sections, :professor_id
  end
end
