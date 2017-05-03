class DirectorsController < ApplicationController

  def index
    @list_of_all_directors = Director.all
    render("directors/index.html.erb")
  end

  def show
    the_id = params[:da_id]
    @Director = Director.find(the_id)

    render("directors/show.html.erb")
  end

  def destroy_row

    the_id = params[:id]
    image_url = params[:image_url]
    name = params[:name]
    bio = params[:bio]
    dob = params[:dob]
    delete = Director.find(the_id)
    delete.name = name
    delete.bio = bio
    delete.dob = dob
    delete.image_url = image_url
    delete.destroy

    redirect_to("/directors")

  end

  def new_form

    render("directors/new_form.html.erb")
  end

  def create_director
    image_url = params[:da_image_url]
    name = params[:da_name]
    bio = params[:da_bio]
    dob = params[:da_dob]
    new_director = Director.new
    new_director.image_url = image_url
    new_director.name = name
    new_director.bio = bio
    new_director.dob = dob
    new_director.save

    # render("photos/create_row.html.erb")

    redirect_to("/directors")
  end



  def edit_form
    the_id = params[:da_id]
    @Director = Director.find(the_id) #when you find by the ID, it captures all fields for you so you can do stuff like @my_photo.caption
    # @url = @my_photo.source

    render("directors/edit_form.html.erb")
  end

  def update_row
    the_id = params[:da_id]
    update_director = Director.find(the_id)
    image_url = params[:da_image_url]
    name = params[:da_name]
    bio = params[:da_bio]
    dob = params[:da_dob]
    update_director.image_url = image_url
    update_director.name = name
    update_director.bio = bio
    update_director.dob = dob
    update_director.save

    redirect_to("/directors/#{update_director.id}")
  end



end
