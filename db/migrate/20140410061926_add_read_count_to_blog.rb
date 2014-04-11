class AddReadCountToBlog < ActiveRecord::Migration
  def change
  	add_column :blogs, :read_count, :integer
  end
end
