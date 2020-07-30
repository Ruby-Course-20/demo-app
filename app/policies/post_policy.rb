class PostPolicy < ApplicationPolicy
    def update?
      user.admin? or not record.published?
    end
    unless PostPolicy.new(current_user, @post).update?
      raise Pundit::NotAuthorizedError, "not allowed to update? this #{@post.inspect}"
    end
    def publish
      @post = Post.find(params[:id])
      authorize @post, :update?
      @post.publish!
      redirect_to @post
    end
    def admin_list?
      user.admin?
    end
  end