class DecisionBlocksController < ApplicationController
  before_action :set_decision_block, only: [:show, :edit, :update, :destroy]

  # GET /decision_blocks
  # GET /decision_blocks.json
  def index
    @decision_blocks = DecisionBlock.all
  end

  # GET /decision_blocks/1
  # GET /decision_blocks/1.json
  def show
  end

  # GET /decision_blocks/new
  def new
    @decision_block = DecisionBlock.new
  end

  # GET /decision_blocks/1/edit
  def edit
  end

  # POST /decision_blocks
  # POST /decision_blocks.json
  def create
    @decision_block = DecisionBlock.new(decision_block_params)

    respond_to do |format|
      if @decision_block.save
        format.html { redirect_to @decision_block, notice: 'Decision block was successfully created.' }
        format.json { render :show, status: :created, location: @decision_block }
      else
        format.html { render :new }
        format.json { render json: @decision_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decision_blocks/1
  # PATCH/PUT /decision_blocks/1.json
  def update
    respond_to do |format|
      if @decision_block.update(decision_block_params)
        format.html { redirect_to @decision_block, notice: 'Decision block was successfully updated.' }
        format.json { render :show, status: :ok, location: @decision_block }
      else
        format.html { render :edit }
        format.json { render json: @decision_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decision_blocks/1
  # DELETE /decision_blocks/1.json
  def destroy
    @decision_block.destroy
    respond_to do |format|
      format.html { redirect_to decision_blocks_url, notice: 'Decision block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decision_block
      @decision_block = DecisionBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def decision_block_params
      params.require(:decision_block).permit(:decision_text, :value, :timeline_id, :ordering, :type)
    end
end
