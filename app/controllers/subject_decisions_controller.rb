class SubjectDecisionsController < ApplicationController
  before_action :set_subject_decision, only: [:show, :edit, :update, :destroy]

  # GET /subject_decisions
  # GET /subject_decisions.json
  def index
    @subject_decisions = SubjectDecision.all
  end

  # GET /subject_decisions/1
  # GET /subject_decisions/1.json
  def show
  end

  # GET /subject_decisions/new
  def new
    @subject_decision = SubjectDecision.new
  end

  # GET /subject_decisions/1/edit
  def edit
  end

  # POST /subject_decisions
  # POST /subject_decisions.json
  def create
    @subject_decision = SubjectDecision.new(subject_decision_params)

    respond_to do |format|
      if @subject_decision.save
        format.html { redirect_to @subject_decision, notice: 'Subject decision was successfully created.' }
        format.json { render :show, status: :created, location: @subject_decision }
      else
        format.html { render :new }
        format.json { render json: @subject_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_decisions/1
  # PATCH/PUT /subject_decisions/1.json
  def update
    respond_to do |format|
      if @subject_decision.update(subject_decision_params)
        format.html { redirect_to @subject_decision, notice: 'Subject decision was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_decision }
      else
        format.html { render :edit }
        format.json { render json: @subject_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_decisions/1
  # DELETE /subject_decisions/1.json
  def destroy
    @subject_decision.destroy
    respond_to do |format|
      format.html { redirect_to subject_decisions_url, notice: 'Subject decision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_decision
      @subject_decision = SubjectDecision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_decision_params
      params.require(:subject_decision).permit(:decision_block_id, :choice_value, :timeline_id)
    end
end
