class NestedBaseController < BaseController

  before_action :set_nesteds

  private

    def set_nesteds
      raise NotImplementedError
    end
end
