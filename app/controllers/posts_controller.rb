class PostsController < ApplicationController
  before_action :check_user_login!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    if @post.save
      # Redirect to the post's show page if save is successful
      redirect_to @post, notice: 'Post was successfully created.'
    else
      # Re-render the new form if save fails
      render :new
    end
  end

  def index
  end

  private

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
