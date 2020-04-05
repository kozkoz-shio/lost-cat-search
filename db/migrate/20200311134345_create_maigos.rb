class CreateMaigos < ActiveRecord::Migration[5.0]
  def change
    create_table :maigos do |t|
      t.string :image
      t.string :name
      t.integer :age
      t.string :sex
      t.string :address
      t.string :content

      t.timestamps
    end
  end
end
