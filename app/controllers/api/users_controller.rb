class Api::UsersController < ApplicationController
  def index
    @users = User.all
    # @users = current_user.users
    render "index.json.jbuilder"
  end

  def show
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    render "show.json.jbuilder"
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password],
      email: params[:email],
      phone_number: params[:phone_number],
      summary: params[:summary],
      gender_of_child: params[:gender_of_child],
      zipcode: params[:zipcode],
      # user_id: current_user.id
      )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
      else
        render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      username: params[:input_username],
      email: params[:input_email],
      phone_number: params[:input_phone_number],
      summary: params[:input_summary],
      zipcode: params[:input_zipcode]
      )
    if @user.save
      render "show.json.jbuilder"
    else 
      render "error.json.jbuilder"
    end
  end
end


