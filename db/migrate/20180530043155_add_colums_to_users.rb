class AddColumsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tipousuario, :string
    add_column :users, :nombre, :string
    add_column :users, :planestudio, :integer
    add_column :users, :nocontrol, :integer
  end
end
