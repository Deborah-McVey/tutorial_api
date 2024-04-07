class CreateTutorials < ActiveRecord::Migration[7.1]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end
