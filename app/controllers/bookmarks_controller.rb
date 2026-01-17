class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    if @bookmark.save
    redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  # end

  private

  def bookmark_params
    params.require(:bookmark).permit()
  end

end
