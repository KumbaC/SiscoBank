class UsersController < ApplicationController

  def index
    @users = User.all

  end
  def show
    @users = User.find(params[:id])

  end

  def new
    @user = User.new

  end


  def edit
    @user = User.find(params[:id])

  end


  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to users_path(), notice: 'El cliente fue guardado con exito.'
    else

      render "new", status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    if@user.update!(users_params)
      redirect_to users_path(), notice: 'La información del cliente fue actualizada con exito.'
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to users_path(), notice: 'El cliente, fue eliminado del sistema.'
    end

  end



  private

    def users_params
      params.require(:user).permit(:type_person, :identification, :document_issue_date, :document_expiration_date, :name, :email, :main_phone, :secondary_phone)
    end

end
