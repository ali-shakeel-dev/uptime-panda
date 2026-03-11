class MonitorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_monitor, only: [:edit, :show, :update, :destroy]


  def index
    # @pulses = current_user.pulses.order(created_at: :desc)
    @pulses = current_user.pulses.order(created_at: :desc).page(params[:page]).per(15)
    @enabled_status_page_count = Pulse.status_pages.count
    @monitors_count = Pulse.monitors.count
  end

  def new
    @pulse = current_user.pulses.build
  end

  def create
    @pulse = current_user.pulses.create(monitor_params)

    if @pulse.save
      redirect_to monitors_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @pulse = current_user.pulses.find(params[:id])
    @pulse.update(monitor_params)
    redirect_to monitors_path
  end

  def destroy 
    @pulse.destroy
    redirect_to monitors_path
  end

  private 

  def monitor_params
    params.require(:pulse).permit(:url, :pulse_interval, :pulse_type, :status_page)
  end

  def set_monitor
    @pulse = current_user.pulses.find(params[:id])
  end
end