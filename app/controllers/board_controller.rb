class BoardController < ApplicationController
  def index
    @list = Table.all
    
    

    
    
  end

  def new
  end

  def create
    new_post=Table.new(title: params[:title], editor: params[:editor], content: params[:content])
    
    new_post.save  
    
    redirect_to "/board/index"
  end

  def edit
    # 비밀번호 입력시 edit창으로 오고 싶다.
    # edit창 넘어오기전에 모달로 비밀번호 입력을 띄우든지, 액션을 하나 더 만들까...?
    
    @show_data = Table.find(params[:edit_id])
    
  end

  def update
    update_post = Table.find(params[:update_id])
    update_post.title = params[:title]
    update_post.editor = params[:editor]
    update_post.content = params[:content]
    
    update_post.save
    
    redirect_to "/board/index"
    
  end

  def destroy
    destroy_post = Table.find(params[:destroy_id])
    destroy_post.destroy
    
    redirect_to "/board/index"
  end
end
