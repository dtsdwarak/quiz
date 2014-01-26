class Database < ActiveRecord::Base
   attr_accessible :users, :pass
   self.table_name = "login"

end
