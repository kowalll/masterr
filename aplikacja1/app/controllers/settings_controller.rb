class SettingsController < ApplicationController
  before_action :set_setting, only: [:edit, :update]

  def edit
  	@setting = Setting.first
  end

  def update
	respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to articles_path, notice: 'Spoko loko.' }
      else
        format.html { render :edit }
      end
    end
  end


  private
    def set_setting
      @setting = Setting.first

    end

	def setting_params
      params.require(:setting).permit(:show_order_then, :show_active, :order_title)
    end
end
