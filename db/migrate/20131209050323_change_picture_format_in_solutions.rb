class ChangePictureFormatInSolutions < ActiveRecord::Migration
  def change
  	change_column :solutions, :picture, :text
  end
end
