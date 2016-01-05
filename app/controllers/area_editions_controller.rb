class AreaEditionsController < Spree::Admin::BaseController
  before_action :set_parents
  before_action :set_area_edition, only: [:show, :edit, :update, :destroy]

  # GET /area_editions
  # GET /area_editions.json
  def index
    @area_editions = @layout.area_editions.all
  end

  # GET /area_editions/1
  # GET /area_editions/1.json
  def show
  end

  # GET /area_editions/new
  def new
    @area_edition = @layout.area_editions.new
  end

  # GET /area_editions/1/edit
  def edit
  end

  # POST /area_editions
  # POST /area_editions.json
  def create
    @area_edition = @layout.area_editions.new(area_edition_params)

    respond_to do |format|
      if @area_edition.save
        format.html { redirect_to main_app.url_for([:edit, @product, @theme, @personalization, @layout, @area_edition]), notice: 'Area edition was successfully created.' }
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
        format.html { redirect_to main_app.url_for([:edit, @product, @theme, @personalization, @layout, @area_edition]), notice: 'Area edition was successfully updated.' }
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
      format.html { redirect_to main_app.url_for([@product, @theme, @personalization, @layout, :area_editions]), notice: 'Area edition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_parents
      @product = Spree::Product.find_by slug: params[:product_id]
      @theme = @product.themes.find params[:theme_id]
      @personalization = @theme.personalizations.find params[:personalization_id]
      @layout = @personalization.layouts.find params[:layout_id]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_area_edition
      @area_edition = @layout.area_editions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_edition_params
      params.require(:area_edition).permit(:layout_id, :name, :required, :order, :area_type)
    end
end
