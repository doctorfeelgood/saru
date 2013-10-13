class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    # Saving without session maintenance to skip
    # auto-login which can't happen here because
    # the User has not yet been activated
    if @user.save
      flash[:notice] = "Su cuenta ha sido creada correctamente."
      redirect_to signup_url
    else
      flash[:notice] = "Ha ocurrido un problema al crear su cuenta."
      render :action => :new
    end
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Cuenta actualizada!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

end
