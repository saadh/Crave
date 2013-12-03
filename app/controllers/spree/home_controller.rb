module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html
    layout :set_layout

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
    end

    def terms
      layout = 'spree/layouts/spree_application'
    end

    def privacy
      layout = 'spree/layouts/spree_application'
    end

    def set_layout
      if params[:action] == 'index'
        'spree/layouts/crave'
      else
        'spree/layouts/spree_application'
      end
    end
    
  end
end
