class MaigosController < ApplicationController
  before_action :set_maigo, only: [:show, :edit, :update, :destroy]

  # GET /maigos
  # GET /maigos.json
  def index
    @maigos = Maigo.all
  end

  # GET /maigos/1
  # GET /maigos/1.json
  def show
  end

  # GET /maigos/new
  def new
    @maigo = Maigo.new
  end

  # GET /maigos/1/edit
  def edit
  end

  # POST /maigos
  # POST /maigos.json
  def create
    @maigo = Maigo.new(maigo_params)

    respond_to do |format|
      if @maigo.save
        format.html { redirect_to @maigo, notice: 'Maigo was successfully created.' }
        format.json { render :show, status: :created, location: @maigo }
      else
        format.html { render :new }
        format.json { render json: @maigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maigos/1
  # PATCH/PUT /maigos/1.json
  def update
    respond_to do |format|
      if @maigo.update(maigo_params)
        format.html { redirect_to @maigo, notice:  'を更新しました' }
        format.json { render :show, status: :ok, location: @maigo }
      else
        format.html { render :edit }
        format.json { render json: @maigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maigos/1
  # DELETE /maigos/1.json
  def destroy
    @maigo.destroy
    respond_to do |format|
      format.html { redirect_to maigos_url, notice: 'Maigo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maigo
      @maigo = Maigo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maigo_params
      params.require(:maigo).permit(:image, :name, :age, :sex, :address, :content).merge(user_id: current_user.id)
    end
end
