class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def create
    @room = Room.build(room_params)

    if @room.save
      redirect_to rooms_path, notice: "Room was successfully created"
    else
      render :new
    end
  end

  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = @room.messages.order(created_at: :desc)
  end

  def room_params
    params.require(:room).permit(:name)
  end
end
