class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @list_of_photos = Photo.all
    @id = params["id"]

    render("details.html.erb")
  end

  def destroy

    @id = params["id"]
    p = Photo.find({ :id => @id })
    p.desroy

    render("deleted.html.erb")
  end

  def new_form


    render("new_form.html.erb")
  end

end
