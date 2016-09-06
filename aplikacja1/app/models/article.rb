# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text(65535)
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string(255)
#

class Article < ActiveRecord::Base
	validates :url, format: /http/
	validates :title, presence: true
    validates :title, uniqueness: true
    has_many :attachment
end
