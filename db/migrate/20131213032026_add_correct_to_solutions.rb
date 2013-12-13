class AddCorrectToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :correct, :string
  end
end
