class TodoItemsController < ApplicationController
  
    def index
        @finished_items = TodoItem.finished.order('done_at DESC')
        @todo_items = TodoItem.unfinished.order('created_at DESC')
      end
    
      private
    
      def todo_item_params
        params.require(:todo_item).permit(:title, :done_at)
      end
end
