class SkillUsersController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @skill_user = @user.skill_users.new
    @skills = Skill.all
  end

  def create
    @user = User.find(params[:user_id])
    @skill_user = @user.skill_users.new
    @skills = Skill.all
  end

  def destroy
    @user = User.find(params[:user_id])
    @skill_user = @user.skill_users.find(params[:id])
    @skill_user.destroy
    redirect_to @user
  end
end
