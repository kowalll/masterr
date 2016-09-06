class SettingAllertController < ApplicationController
respond_to :html, :js
def new
    @setting_allert = setting_allert.new
  end

  def create
    @setting_allert  = setting_allert.create(setting_allert_params)
  end

  private

    def all_setting_allerts
      @setting_allerts = setting_allert.all
    end

    def setting_allert_params
      
    end
end
