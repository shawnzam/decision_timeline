class SubjectSessionsController < ApplicationController
  before_action :set_subject_session, only: [:show, :edit, :update, :destroy]

  # GET /subject_sessions
  # GET /subject_sessions.json
  def index
    @subject_sessions = SubjectSession.all
  end

  # GET /subject_sessions/1
  # GET /subject_sessions/1.json
  def show
  end

  # GET /subject_sessions/new
  def new
    @subject_session = SubjectSession.new
  end

  # GET /subject_sessions/1/edit
  def edit
  end

  # POST /subject_sessions
  # POST /subject_sessions.json
  def create
    @subject_session = SubjectSession.new(subject_session_params)

    respond_to do |format|
      if @subject_session.save
        format.html { redirect_to @subject_session, notice: 'Subject session was successfully created.' }
        format.json { render :show, status: :created, location: @subject_session }
      else
        format.html { render :new }
        format.json { render json: @subject_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_sessions/1
  # PATCH/PUT /subject_sessions/1.json
  def update
    respond_to do |format|
      if @subject_session.update(subject_session_params)
        format.html { redirect_to @subject_session, notice: 'Subject session was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_session }
      else
        format.html { render :edit }
        format.json { render json: @subject_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_sessions/1
  # DELETE /subject_sessions/1.json
  def destroy
    @subject_session.destroy
    respond_to do |format|
      format.html { redirect_to subject_sessions_url, notice: 'Subject session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_session
      @subject_session = SubjectSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_session_params
      params.require(:subject_session).permit(:timeline_id, :title)
    end
end
