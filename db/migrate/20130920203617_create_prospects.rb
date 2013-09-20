class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :email
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
