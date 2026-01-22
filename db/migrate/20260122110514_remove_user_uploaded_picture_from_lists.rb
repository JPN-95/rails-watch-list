class RemoveUserUploadedPictureFromLists < ActiveRecord::Migration[7.1]
  def change
    remove_column :lists, :user_uploaded_picture, :text
  end
end
