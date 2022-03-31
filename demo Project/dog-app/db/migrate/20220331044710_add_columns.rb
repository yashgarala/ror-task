class AddColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :start_date, :datetime
    add_column :people, :end_date, :datetime
    
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
