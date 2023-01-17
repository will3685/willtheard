class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.string :level
      t.string :svg_path
      t.string :category

      t.timestamps
    end
  end
end
