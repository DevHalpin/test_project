class UpdateUsersWithInfo < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :info, :string

  end
end
