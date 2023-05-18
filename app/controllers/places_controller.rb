class PlacesController < ApplicationController

  def show
    @place = Place.find_by({"id" => params["id"]})
    @post = Post.find_by({"id" => @place["post_id"]})
  end

  def new
    @place = Place.new
  end

  def create

    @place = Place.new

    # assign user-entered form data to Contact's columns
    @place["name"] = params["place"]["name"]

    # assign relationship between Contact and Company
    @place["post_id"] = params["place"]["post_id"]

    # save Contact row
    @place.save

    # redirect user
    redirect_to "/posts/#{@place["post_id"]}"
  end
  

end
