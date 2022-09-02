class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.integer :age
      t.belongs_to :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
