class KhaanasController < ApplicationController
  before_action :set_khaana, only: [:show, :edit, :update, :destroy]

  # GET /khaanas
  # GET /khaanas.json
  def index
    @khaanas = Khaana.all.order("created_at DESC")
  end

  # GET /khaanas/1
  # GET /khaanas/1.json
  def show
  end

  # GET /khaanas/new
  def new
    @khaana = Khaana.new
  end

  # GET /khaanas/1/edit
  def edit
  end

  # POST /khaanas
  # POST /khaanas.json
  def create
    @khaana = Khaana.new(khaana_params)

    respond_to do |format|
      if @khaana.save
        format.html { redirect_to @khaana, notice: 'Khaana was successfully created.' }
        format.json { render :show, status: :created, location: @khaana }
      else
        format.html { render :new }
        format.json { render json: @khaana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /khaanas/1
  # PATCH/PUT /khaanas/1.json
  def update
    respond_to do |format|
      if @khaana.update(khaana_params)
        format.html { redirect_to @khaana, notice: 'Khaana was successfully updated.' }
        format.json { render :show, status: :ok, location: @khaana }
      else
        format.html { render :edit }
        format.json { render json: @khaana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /khaanas/1
  # DELETE /khaanas/1.json
  def destroy
    @khaana.destroy
    respond_to do |format|
      format.html { redirect_to @khaanas_url, notice: 'Khaana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_khaana
      @khaana = Khaana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def khaana_params
      params.require(:khaana).permit(:title, :description, :user_id)
    end
	def find_recipe
@recipe = Recipe.find(params[:id])
end

end
