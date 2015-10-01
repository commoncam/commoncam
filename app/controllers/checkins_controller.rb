class CheckinsController < ApplicationController
  before_action :set_checkin, only: [:show, :edit, :update, :destroy]

  # GET /checkins
  def index
    @checkins = Checkin.all
  end

  # GET /checkins/1
  def show
  end

  # GET /checkins/new
  def new
    @checkin = Checkin.new
  end

  # GET /checkins/1/edit
  def edit
  end

  # POST /checkins
  def create
    @checkin = Checkin.new(checkin_params)
    @checkin.user = current_user

    if @checkin.save
      redirect_to @checkin, notice: 'Checkin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /checkins/1
  def update
    @checkin.updated_by = current_user.id
    @checkin.increment(:updated_count)
    if @checkin.update(checkin_params)
      redirect_to @checkin, notice: 'Checkin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /checkins/1
  def destroy
    @checkin.destroy
    redirect_to checkins_url, notice: 'Checkin was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def checkin_params
      params.require(:checkin).permit(:camera_id, :exposure, :location_id, :summary, :story, :comments, :created_at, :user_id, :updated_at, :updated_by, :updated_count, :is_user_editable)
    end
end
