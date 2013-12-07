class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :problem, index: true
      t.string :answer
      t.string :picture

      t.timestamps
    end
  end
end
