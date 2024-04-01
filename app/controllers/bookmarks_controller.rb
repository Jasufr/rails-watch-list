class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:destroy]

  def index
    @bookmarks = Bookmark.all
  end

  # def new
  #   @bookmark = Bookmark.new
  # end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path, status: :see_other
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:yml_bookmark).permit(:comment, :yml_movie_id)
  end
end
