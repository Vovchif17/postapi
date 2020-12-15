class PostapisController < ApplicationController
  before_action :set_postapi, only: [:show, :edit, :update, :destroy]

  def index
    @postapis = Postapi.all
  end

  def show
  end

  def new
    @postapi = Postapi.new
  end

  def edit
  end

  def create
    @postapi = Postapi.new(postapi_params)

    respond_to do |format|
      if @postapi.save
        format.html { redirect_to @postapi, notice: 'Postapi was successfully created.' }
        format.json { render :show, status: :created, location: @postapi }
      else
        format.html { render :new }
        format.json { render json: @postapi.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @postapi.update(postapi_params)
        format.html { redirect_to @postapi, notice: 'Postapi was successfully updated.' }
        format.json { render :show, status: :ok, location: @postapi }
      else
        format.html { render :edit }
        format.json { render json: @postapi.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @postapi.destroy
    respond_to do |format|
      format.html { redirect_to postapis_url, notice: 'Postapi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postapi
      @postapi = Postapi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postapi_params
      params.require(:postapi).permit(:name, :message)
    end
end
