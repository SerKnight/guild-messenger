class ClassroomsController < ApplicationController
  before_filter :find_classroom, only: [:show, :join_classroom, :destroy, :invite_user, :create_classroom_membership]
  before_filter :get_messages, only: [:show]

  def get_messages
    @messages = @classroom.messages
    @message  = current_user.messages.build
  end

  def find_classroom
    id = params[:id] || params[:classroom_id]
    @classroom = Classroom.find(id)
  end

  def index
    @classrooms = Classroom.all
    joined = current_user.memberships.pluck(:classroom_id)
    owned = current_user.classrooms.where(user_id: current_user.id).pluck(:id)
    @joined_classrooms = Classroom.where(id: joined + owned)
  end

  def new
    @classroom = current_user.classrooms.new
  end

  def show
    create_classroom_membership(current_user)
    members_ids = Membership.where(classroom_id: @classroom.id).pluck(:user_id).uniq << current_user.id
    @invitable_users = User.where.not(id: members_ids)
    @current_members = User.where(id: members_ids)
  end 

  def invite_user
    user = User.find(params[:user_id])
    create_classroom_membership(user)
    ApplicationMailer.send_classroom_invite(user.id, @classroom.id).deliver_now
    flash[:notice] = "Successfully invited #{user.name}."
    redirect_to @classroom
  end

  def create
    @classroom = Classroom.create(classroom_params.merge(user_id: current_user.id))

    if @classroom.save
      create_classroom_membership(current_user)
      flash[:notice] = "classroom created successfully."
      redirect_to classrooms_path
    else
      render :new
    end
  end

  def destroy
    if @classroom.destroy
      flash[:notice] = "classroom deleted successfully"
    else
      flash[:error] = "classroom delete failed"
    end

    redirect_to classrooms_path
  end

  private

  def create_classroom_membership(user)
    if !user.classrooms.include?(@classroom)
      Membership.create!(classroom_id: @classroom.id, user_id: user.id)
    end
  end

  def classroom_params
    params.require(:classroom).permit(:name, :description)
  end
end
