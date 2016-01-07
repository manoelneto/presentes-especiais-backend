class LayoutsController < Spree::Admin::BaseController
  before_action :set_parents
  before_action :set_layout, only: [:show, :edit, :update, :destroy]

  # GET /layouts
  # GET /layouts.json
  def index
    @layouts = @personalization.layouts.all
  end

  # GET /layouts/1
  # GET /layouts/1.json
  def show
  end

  # GET /layouts/new
  def new
    @layout = @personalization.layouts.new
  end

  # GET /layouts/1/edit
  def edit
    @layout.area_editions.build
  end

  # POST /layouts
  # POST /layouts.json
  def create
    @layout = @personalization.layouts.new(layout_params)

    respond_to do |format|
      if @layout.save
        format.html { redirect_to main_app.url_for([:edit, @product, @theme, @personalization]), notice: 'Layout was successfully created.' }
        format.json { render :show, status: :created, location: @layout }
      else
        format.html { render :new }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /layouts/1
  # PATCH/PUT /layouts/1.json
  def update
    respond_to do |format|
      if @layout.update(layout_params)
        @layout.area_editions.build
        format.html { redirect_to main_app.url_for([:edit, @product, @theme, @personalization]), notice: 'Layout was successfully updated.' }
        format.json { render :edit, status: :ok, location: @layout }
      else
        @layout.area_editions.build
        format.html { render :edit }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /layouts/1
  # DELETE /layouts/1.json
  def destroy
    @layout.destroy
    respond_to do |format|
      format.html { redirect_to main_app.url_for([@product, @theme, @personalization, :layouts]), notice: 'Layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_parents
      @product = Spree::Product.find_by slug: params[:product_id]
      @theme = @product.themes.find params[:theme_id]
      @personalization = @theme.personalizations.find params[:personalization_id]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_layout
      @layout = Layout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def layout_params
      params.require(:layout).permit(:personalization_id, :name, :order, :area_editions_attributes => [
        :id,
        :x1,
        :y1,
        :x2,
        :y2,
        :name,
        :required,
        :area_type,
        :order
      ])
    end
end
