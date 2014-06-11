class ApiUsersController < ApplicationController
  def update
    u=User.find(params[:id])
    #u.emaiil="somethingelse'
    u.emaail=params[:user][:email]
   
    u.save!
    render json: u.to_json
  end

  def index
    u=User.all
    render json: u.to_json 
  end

  def show
    u=User.find(params[:id])
    render json: u.to_json
  end

end
