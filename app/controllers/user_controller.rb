class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "#{@user.first_name} #{@user.last_name} was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path, status: :see_other, notice: "#{@user.first_name} #{@user.last_name} was successfully deleted"
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :due_date_reminder,
      :due_date_reminder_interval,
      :due_date_reminder_time,
      :time_zone
    )
  end
end
