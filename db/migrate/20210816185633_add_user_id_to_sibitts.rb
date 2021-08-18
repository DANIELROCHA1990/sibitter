class AddUserIdToSibitts < ActiveRecord::Migration[6.1]
  def change
    add_column :sibitts, :user_id, :integer
  end
end
