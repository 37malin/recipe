class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :zairyo
      t.text :step

      t.timestamps
    end
  end
end
