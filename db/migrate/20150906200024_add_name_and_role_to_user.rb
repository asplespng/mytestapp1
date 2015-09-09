class AddNameAndRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :integer, default: 0, null: false
    User.all.each do |usr|
      usr.update(role: 1)
    end
  end
end
