class BaseController < Spree::Admin::BaseController

  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  helper_method :show_url, :edit_url, :destroy_url, :new_url, :nested_resource

  # GET /api/new
  def new
    set_resource(service_class.new_item(params))
  end

  # GET /api/new
  def edit
  end

  # POST /api/{plural_resource_name}
  def create
    respond_to do |format|
      if service_class.create(resource_params)
        format.html { redirect_to after_create_url, notice: "#{resource_name} was successfully created." }
        format.json { render :show, status: :created, location: get_resource }
      else
        format.html { render :new }
        format.json { render json: get_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/{plural_resource_name}/1
  def destroy
    service_class.destroy(params)
    respond_to do |format|
      format.html { redirect_to after_destroy_url, notice: "#{resource_name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # GET /api/{plural_resource_name}
  def index
    plural_resource_name = "@#{resource_name.pluralize}"
    instance_variable_set(plural_resource_name, service_class.index(params))
  end

  # GET /api/{plural_resource_name}/1
  def show
  end

  # PATCH/PUT /api/{plural_resource_name}/1
  def update
    respond_to do |format|
      if service_class.update(params, resource_params)
        format.html { redirect_to after_update_url, notice: "#{resource_name} was successfully updated." }
        format.json { render :show, status: :ok, location: get_resource }
      else
        format.html { render :edit }
        format.json { render json: get_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def nested_resource
      []
    end

    def show_url resource=nil
      main_app.url_for(nested_resource + [get_resource] + [resource])
    end

    def edit_url resource=nil
      main_app.url_for([:edit] + nested_resource + [get_resource] + [resource])
    end

    def destroy_url resource=nil
      show_url resource
    end

    def new_url resource=nil
      main_app.url_for([:new] + nested_resource + [get_resource] + [resource])
    end

    def after_create_url
      edit_url
    end

    def after_update_url
      return after_create_url
    end

    def after_destroy_url
      raise NotImplementedError
    end

    # The service class based on the controller
    # @return [Class]
    def service_class
      @service_class ||= "#{service_name}".classify.constantize
    end

    # The singular name for the service class based on the controller
    # @return [String]
    def service_name
      @service_name ||= "#{resource_name}_service"
    end

    # Returns the resource from the created instance variable
    # @return [Object]
    def get_resource
      instance_variable_get("@#{resource_name}")
    end

    # Returns the allowed parameters for searching
    # Override this method in each API controller
    # to permit additional parameters to search on
    # @return [Hash]
    def query_params
      {}
    end

    # Returns the allowed parameters for pagination
    # @return [Hash]
    def page_params
      params.permit(:page, :page_size)
    end

    # The resource class based on the controller
    # @return [Class]
    def resource_class
      @resource_class ||= resource_name.classify.constantize
    end

    # The singular name for the resource class based on the controller
    # @return [String]
    def resource_name
      @resource_name ||= self.controller_name.singularize
    end

    # Only allow a trusted parameter "white list" through.
    # If a single resource is loaded for #create or #update,
    # then the controller for the resource must implement
    # the method "#{resource_name}_params" to limit permitted
    # parameters for the individual model.
    def resource_params
      @resource_params ||= self.send("#{resource_name}_params")
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_resource(resource = nil)
      resource ||= service_class.find(params['id'], params)
      instance_variable_set("@#{resource_name}", resource)
    end

end
