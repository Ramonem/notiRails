class AddVisitToPost < ActiveRecord::Migration
  def change
    add_column :posts, :visit, :int
  end
end
