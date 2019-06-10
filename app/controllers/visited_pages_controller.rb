class VisitedPagesController < ApplicationController
  before_action :set_visited_page, only: [:show, :update, :destroy]

  # GET /visited_pages
  def index
    @visited_pages = VisitedPage.all

    render json: @visited_pages
  end

  # GET /visited_pages/1
  def show
    render json: @visited_page
  end

  # POST /visited_pages
  def create
    @visited_page = VisitedPage.new(visited_page_params)

    if @visited_page.save
      render json: @visited_page, status: :created, location: @visited_page
    else
      render json: @visited_page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visited_pages/1
  def update
    if @visited_page.update(visited_page_params)
      render json: @visited_page
    else
      render json: @visited_page.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visited_pages/1
  def destroy
    @visited_page.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visited_page
      @visited_page = VisitedPage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def visited_page_params
      params.require(:visited_page).permit(:search_term_id, :url)
    end
end
