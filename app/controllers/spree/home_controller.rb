module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html
    layout 'spree/layouts/crave', :only => [:index]
    layout 'spree/layouts/spree_application', :only => [:terms, :privacy]

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
    end

    def terms
    end

    def privacy
    end
    
  end
end
