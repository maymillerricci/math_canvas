class AddLikesToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :likes, :integer, default: 0
  end
end
