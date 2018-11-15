class Api::UsersController < ApplicationController
def create
  user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username,
    password: params[:password],
    email: params[:email],
    phone_number: params[:phone_number],
    summary: params[:summary],
    age_of_child: params[:age_of_child],
    gender_of_child: params[:gender_of_child],
    zipcode: params[:zipcode]
    )

  if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

end
