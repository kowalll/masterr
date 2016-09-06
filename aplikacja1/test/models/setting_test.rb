# == Schema Information
#
# Table name: settings
#
#  id              :integer          not null, primary key
#  show_active     :boolean
#  order_title     :integer
#  show_order_then :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
