class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end
  
  def delete
    @del_post = Post.find(params[:post_id])
    @del_post.delete
    
    redirect_to "/home/index"
  end
  
  def update_view
    @upd_post = Post.find(params[:post_id])
  end

  def do_update
    @do_upd_post = Post.find(params[:post_id])
    @do_upd_post.title = params[:title]
    @do_upd_post.content = params[:content]
    @do_upd_post.save
    
    redirect_to "/home/index"
  end
  
  def complete
    @new_post = Post.new
    @new_post.title = params[:title]
    @new_post.content = params[:content]
    @new_post.save
    redirect_to "/home/index"
  
  end
 
  def view_each
    @one_post = Post.find(params[:post_id])
  end
  
  def reply_write
    new_reply = Reply.new
    new_reply.content = params[:comment]
    new_reply.post_id = params[:id_of_post]
    new_reply.save
    
    redirect_to "/home/index"
  end
  
end