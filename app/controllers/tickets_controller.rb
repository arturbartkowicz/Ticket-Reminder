class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to root_path, notice: "#{@ticket.title} was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to root_path, status: :see_other, notice: "#{@ticket.title} was successfully deleted"
  end

  private

  def ticket_params
    params.require(:ticket).permit(
      :title,
      :description,
      :due_date,
      :status_id,
      :progress,
      :user_id
    )
  end
end
