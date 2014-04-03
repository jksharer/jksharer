class AddReferencesBlog < ActiveRecord::Migration
  def change
    change_table :blogs do |t|
      t.references :resource_type
      t.references :blog_type
    end
  end
end
