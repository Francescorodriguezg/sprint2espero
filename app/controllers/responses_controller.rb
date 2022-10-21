# frozen_string_literal: true

class ResponsesController < ApplicationController
  before_action :set_response, only: %i[show edit update destroy]

  # GET /responses or /responses.json
  def index
    @responses = if current_user.moderator

                 end
    Response.all
  end

  # GET /responses/1 or /responses/1.json
  def show; end

  # GET /responses/new
  def new
    @response = Response.new

    session[:user_id] = params[:user_id]
    session[:user_moderator] = params[:user_moderator]
  end

  # GET /responses/1/edit
  def edit; end

  # POST /responses or /responses.json
  def create
    @response = Response.new(response_params)
    @response.user_id = session[:user_id]
    @response.user_moderator = session[:user_moderator]
    @response.message_for = @response.user_id if current_user.moderator == true
    @response.message_for = @response.user_moderator unless current_user.moderator == true

    redirect_to responses_path if @response.save
  end

  # PATCH/PUT /responses/1 or /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html { redirect_to response_url(@response), notice: 'Response was successfully updated.' }
        format.json { render :show, status: :ok, location: @response }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1 or /responses/1.json
  def destroy
    @response.destroy

    respond_to do |format|
      format.html { redirect_to responses_url, notice: 'Response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_response
    @response = Response.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def response_params
    params.require(:response).permit(:message, :status, :user_id, :user_moderator)
  end
end
