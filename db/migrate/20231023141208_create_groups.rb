class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups, id: false do |t|
      t.string :group_uuid, null: false, primary_key: true
      t.string :group_name
      t.integer :member_count

      t.timestamps
    end
  end
end
