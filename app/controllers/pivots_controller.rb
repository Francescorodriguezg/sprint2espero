# frozen_string_literal: true

class PivotsController < ApplicationController
  before_action :set_pivot, only: %i[show edit update destroy]

  # GET /pivots or /pivots.json
  def index
    @pivots = Pivot.all
  end

  # GET /pivots/1 or /pivots/1.json
  def show
    @pivot = Pivot.find(params[:id])
  end

  # GET /pivots/new
  def new
    @pivot = Pivot.new
    # @exam = Pivot.find(params[:id])
  end

  # GET /pivots/1/edit
  def edit; end

  # POST /pivots or /pivots.json
  def create
    @user_moderator_id = rand(User.where(moderator: true).all.count)
    @pivot = Pivot.new(pivot_params)

    @pivot.user_id = current_user.id
    @pivot.moderador_id = User.where(moderator: true).offset(@user_moderator_id).first.id

    respond_to do |format|
      if @pivot.save
        format.html { redirect_to pivots_path, notice: 'Reserva creada con éxito.' }
        format.json { render :show, status: :created, location: @pivot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pivot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pivots/1 or /pivots/1.json
  def update
    respond_to do |format|
      if @pivot.update(pivot_params)
        format.html { redirect_to pivots_path, notice: 'Pivot was successfully updated.' }
        format.json { render :show, status: :ok, location: @pivot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pivot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pivots/1 or /pivots/1.json
  def destroy
    @pivot.destroy

    respond_to do |format|
      format.html { redirect_to pivots_url, notice: 'Pivot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pivot
    @pivot = Pivot.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pivot_params
    params.require(:pivot).permit(:club_name, :sport_name, :club_address, :status)
  end
end
