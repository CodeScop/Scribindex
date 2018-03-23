class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.references :group, foreign_key: true
      t.references :character, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
