class MessagesController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.build(message_params)

    if @message.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @room }
      end
    else
      redirect_to @room
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
