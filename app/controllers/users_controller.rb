class  UsersController < ActionController::Base
    def showUsers
        data = ["Ramesh", "Harry", "Suresh", "Kamlesh"]
        render :json => data
    end
end