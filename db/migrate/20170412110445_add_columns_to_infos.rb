class AddColumnsToInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :infos, :first_name, :string
    add_column :infos, :last_name, :string
    add_column :infos, :email, :string
    add_column :infos, :phone, :string
    add_column :infos, :description, :text
    add_column :infos, :motivation, :text
    add_column :infos, :status, :string
    add_column :infos, :level, :string
    add_column :infos, :city, :string
    add_column :infos, :birthday, :string
  end
end
