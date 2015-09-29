class SelectedModifiersController < ApplicationController
  before_action :set_selected_modifier, only: [:show, :edit, :update, :destroy]

  # GET /selected_modifiers
  # GET /selected_modifiers.json
  def index
    @selected_modifiers = SelectedModifier.all
  end

  # GET /selected_modifiers/1
  # GET /selected_modifiers/1.json
  def show
  end

  # GET /selected_modifiers/new
  def new
    @selected_modifier = SelectedModifier.new
  end

  # GET /selected_modifiers/1/edit
  def edit
  end

  # POST /selected_modifiers
  # POST /selected_modifiers.json
  def create
    @selected_modifier = SelectedModifier.new(selected_modifier_params)

    respond_to do |format|
      if @selected_modifier.save
        format.html { redirect_to @selected_modifier, notice: 'Selected modifier was successfully created.' }
        format.json { render :show, status: :created, location: @selected_modifier }
      else
        format.html { render :new }
        format.json { render json: @selected_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_modifiers/1
  # PATCH/PUT /selected_modifiers/1.json
  def update
    respond_to do |format|
      if @selected_modifier.update(selected_modifier_params)
        format.html { redirect_to @selected_modifier, notice: 'Selected modifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_modifier }
      else
        format.html { render :edit }
        format.json { render json: @selected_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_modifiers/1
  # DELETE /selected_modifiers/1.json
  def destroy
    @selected_modifier.destroy
    respond_to do |format|
      format.html { redirect_to selected_modifiers_url, notice: 'Selected modifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_modifier
      @selected_modifier = SelectedModifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_modifier_params
      params.require(:selected_modifier).permit(:item_id, :cart_item_id, :modifier_id)
    end
end
