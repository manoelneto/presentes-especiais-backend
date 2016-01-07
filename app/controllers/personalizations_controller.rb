class PersonalizationsController < Spree::Admin::BaseController
  before_action :set_parents
  before_action :set_personalization, only: [:show, :edit, :update, :destroy]
  helper_method [:show_link, :edit_link, :new_link]

  # GET /personalizations
  # GET /personalizations.json
  def index
    @personalizations = @theme.personalizations.all
  end

  # GET /personalizations/1
  # GET /personalizations/1.json
  def show
  end

  # GET /personalizations/new
  def new
    @personalization = @theme.personalizations.new
  end

  # GET /personalizations/1/edit
  def edit
  end

  # POST /personalizations
  # POST /personalizations.json
  def create
    @personalization = @theme.personalizations.new(personalization_params)

    respond_to do |format|
      if @personalization.save
        format.html { redirect_to main_app.url_for([:edit, @product, @theme, @personalization]), notice: 'Personalization was successfully created.' }
        format.json { render :show, status: :created, location: @personalization }
      else
        format.html { render :new }
        format.json { render json: @personalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalizations/1
  # PATCH/PUT /personalizations/1.json
  def update
    respond_to do |format|
      if @personalization.update(personalization_params)
        format.html { redirect_to main_app.url_for([:edit, @product, @theme, @personalization]), notice: 'Personalization was successfully updated.' }
        format.json { render :show, status: :ok, location: @personalization }
      else
        format.html { render :edit }
        format.json { render json: @personalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalizations/1
  # DELETE /personalizations/1.json
  def destroy
    @personalization.destroy
    respond_to do |format|
      format.html { redirect_to main_app.url_for([@product, @theme, :personalizations]), notice: 'Personalization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_link object=nil
    main_app.url_for([@product, @theme, @personalization, object])
  end

  def edit_link object=nil
    main_app.url_for([:edit, @product, @theme, @personalization, object])
  end

  def new_link object=nil
    main_app.url_for([:new, @product, @theme, @personalization, object])
  end

  private
    def set_parents
      @product = Spree::Product.find_by slug: params[:product_id]
      @theme = @product.themes.find params[:theme_id]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_personalization
      @personalization = @theme.personalizations.find params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalization_params
      params.require(:personalization).permit(:theme_id, :picture, :name, :order)
    end
end
