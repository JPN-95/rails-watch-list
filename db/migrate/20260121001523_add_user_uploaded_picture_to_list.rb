class AddUserUploadedPictureToList < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :user_uploaded_picture, :text
  end
end
