class CreateProgrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :programmers do |t|
      t.string :name
      t.integer :age
      t.text :enjoys

      t.timestamps
    end
  end
end
