class Mascolumnas < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :image, :text
    add_column :events, :user_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
