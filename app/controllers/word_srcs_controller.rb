class WordSrcsController < ApplicationController
  before_action :set_word_src, only: [:show, :edit, :update, :destroy]

  # GET /word_srcs
  # GET /word_srcs.json
  def index
    @word_srcs = WordSrc.all
  end

  # GET /word_srcs/1
  # GET /word_srcs/1.json
  def show
  end

  # GET /word_srcs/new
  def new
    @word_src = WordSrc.new
  end

  # GET /word_srcs/1/edit
  def edit
  end

  # POST /word_srcs
  # POST /word_srcs.json
  def create
    @word_src = WordSrc.new(word_src_params)

    respond_to do |format|
      if @word_src.save
        format.html { redirect_to @word_src, notice: 'Word src was successfully created.' }
        format.json { render :show, status: :created, location: @word_src }
      else
        format.html { render :new }
        format.json { render json: @word_src.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_srcs/1
  # PATCH/PUT /word_srcs/1.json
  def update
    respond_to do |format|
      if @word_src.update(word_src_params)
        format.html { redirect_to @word_src, notice: 'Word src was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_src }
      else
        format.html { render :edit }
        format.json { render json: @word_src.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_srcs/1
  # DELETE /word_srcs/1.json
  def destroy
    @word_src.destroy
    respond_to do |format|
      format.html { redirect_to word_srcs_url, notice: 'Word src was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_src
      @word_src = WordSrc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_src_params
      params.require(:word_src).permit(:name, :create_person)
    end
end
