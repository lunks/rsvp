class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end
  
  def new
    @answer = Answer.new
  end
  
  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
    SendRsvp.rsvp_confirmation(@answer).deliver
#     flash[:notice] = "Obrigado por preencher."
      if @answer.invite
        redirect_to confirmado_path
      else
        redirect_to nao_confirmado_path
      end
    else
      render :action => 'new'
    end
  end
end
