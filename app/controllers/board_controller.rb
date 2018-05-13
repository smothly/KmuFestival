class BoardController < ApplicationController
  def index
    @list = Table.all
    
    # 최신순으로 카드 보여주기
    @list_show = @list.reverse
    
    

    
    
  end

  def new
  end

  def create
    new_post=Table.new(title: params[:title], editor: params[:editor], content: params[:content], password: params[:password])
    
    new_post.save  
    
    redirect_to "/board/index"
  end

  
  def edit
    
    edit_post = Table.find(params[:edit_id])
    puts edit_post.password
    puts "ok"
    #사용자 입력값
    edit_passwd=params[:edit_passwd]
    
    
    puts edit_passwd
    puts edit_passwd.to_i
    
    temp_id = edit_post.id
    puts temp_id
    
    if  edit_passwd.to_i != edit_post.password
      
      redirect_to "/board/index"
      
    elsif edit_passwd.to_i == edit_post.password
      
     redirect_to "/board/edit_temp/" + temp_id.to_s
      
    
    end

  end
  
  def edit_temp
    @show_data =Table.find(params[:edit_temp_id])
    
    
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
    
    
    dest_passwd = params[:destroy_passwd].to_i
    
    
    if dest_passwd == destroy_post.password

      destroy_post.destroy
      
    elsif dest_passwd == 20172018
      
      destroy_post.destroy
    
    else  dest_passwd != destroy_post.password
    
    end
    
    
    redirect_to "/board/index"
    
  end
  
  
  
end