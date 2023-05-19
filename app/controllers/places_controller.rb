class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

   def new
     @place = Place.new
  #   # render posts/new view with new Post form
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
