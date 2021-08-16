class CreateSibitts < ActiveRecord::Migration[6.1]
  def change
    create_table :sibitts do |t|
      t.text :sibitt

      t.timestamps
    end
  end
end
