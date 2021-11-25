class AddRolesInRoleTable < ActiveRecord::Migration[6.1]
 def change
     add_column :roles, :user_roles, :text
   end
end
