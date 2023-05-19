class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
      @place = Place.find_by({"id" => params["place_id"]})
      @posts = Post.where({"place_id" => @place["id"]})
  end

   def new
     @place = Place.new
   end

   def create
  #   # start with a new Post
     @place = Place.new
  #   # assign user-entered form data to Post's columns
    @place["name"] = params["place"]["name"]
    @place.save
  #   # redirect user
  redirect_to "/places"
   end
end
