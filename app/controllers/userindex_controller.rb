class UserindexController < ActionController::Base
    def index
        userid = params[:userid]
        data = ["user1", "user2", "user3", "user4", "user5"]
        render :json => data[userid.to_i]
    end
end