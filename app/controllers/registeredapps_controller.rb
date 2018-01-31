class RegisteredappsController < ApplicationController
  def index
    @registeredapps = []
     @allapps = Registeredapp.all
     @allapps.each do |app|
     if app.user == current_user
     @registeredapps << app
     end
    end
  end

  def show
    @registeredapp = Registeredapp.find(params[:id])
  end

  def create
    @registeredapp = Registeredapp.new
    @registeredapp.name = params[:registeredapp][:name]
    @registeredapp.url = params[:registeredapp][:url]
    @registeredapp.user = current_user

    if @registeredapp.save
      flash[:notice] = 'You successfully registered your app!'
      redirect_to @registeredapp
    else
      flash[:alert] = 'There was an error registering your app. Please try again.'
      render :new
    end
  end

  def new
    @registeredapp = Registeredapp.new
  end

  def edit
    @registeredapp = Registeredapp.find(params[:id])
  end

  def update
    @registeredapp = Registeredapp.find(params[:id])
    @registeredapp.name = params[:registeredapp][:name]
    @registeredapp.url = params[:registeredapp][:url]

    if @registeredapp.save
       flash[:notice] = "Your app was updated."
      redirect_to @registeredapp
    else
      flash.now[:alert] = "Error saving app. Please try again."
      render :edit
    end
  end

  def destroy
    @registeredapp = Registeredapp.find(params[:id])

    if @registeredapp.destroy
      flash[:notice] = 'You successfully deleted your app!'
      redirect_to action: :index
    else
      flash[:alert] = 'There was an error deleteing your app. Please try again.'
      render :show
    end
  end

end
