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

class Setting < ActiveRecord::Base

  enum order_title: [ :desc , :asc  ]

end
