class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts, include: :user, status: :created
    end
end
