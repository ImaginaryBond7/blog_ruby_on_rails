class TodosController < ActionController::Base
    skip_before_action :verify_authenticity_token
    # def showTodos
    #     limit = params[:limit]
    #     data = ["todos1", "todos2", "todos3", "todos4", "todos5"]
    #     if limit.nil?
    #         render :json => data
    #     else
    #         render :json => data.first(limit.to_i)
    #         # render :json => data.slice(0,limit.to_i)
    #     end
    # end
    def getAllTodos
        todoList = Todo.all
        render :json=>todoList
    end

    def createTodos
        todoItem = {
            "title" => params[:title]
        }
        todo = Todo.new(todoItem)
        todo.save
        # returns todo to the postman when post method is called
        render :json => todo
    end

    def deleteTodos
        id = params[:id]
        todo = Todo.destroy(id)

        render :json => Todo.all
    end
    
    def updateTodos
        id = params[:id]
        updateInfo = params[:updateInfo]
        todo = Todo.update(id, :title => updateInfo)

        render :json => todo
    end
end