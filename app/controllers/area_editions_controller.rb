class AreaEditionsController < ApplicationController
  before_action :set_area_edition, only: [:show, :edit, :update, :destroy]

  # GET /area_editions
  # GET /area_editions.json
  def index
    @area_editions = AreaEdition.all
  end

  # GET /area_editions/1
  # GET /area_editions/1.json
  def show
  end

  # GET /area_editions/new
  def new
    @area_edition = AreaEdition.new
  end

  # GET /area_editions/1/edit
  def edit
  end

  # POST /area_editions
  # POST /area_editions.json
  def create
    @area_edition = AreaEdition.new(area_edition_params)

    respond_to do |format|
      if @area_edition.save
        format.html { redirect_to @area_edition, notice: 'Area edition was successfully created.' }
        format.json { render :show, status: :created, location: @area_edition }
      else
        format.html { render :new }
        format.json { render json: @area_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_editions/1
  # PATCH/PUT /area_editions/1.json
  def update
    respond_to do |format|
      if @area_edition.update(area_edition_params)
        format.html { redirect_to @area_edition, notice: 'Area edition was successfully updated.' }
        format.json { render :show, status: :ok, location: @area_edition }
      else
        format.html { render :edit }
        format.json { render json: @area_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_editions/1
  # DELETE /area_editions/1.json
  def destroy
    @area_edition.destroy
    respond_to do |format|
      format.html { redirect_to area_editions_url, notice: 'Area edition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_edition
      @area_edition = AreaEdition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_edition_params
      params.require(:area_edition).permit(:layout_id, :name, :required, :order, :area_type)
    end
end
