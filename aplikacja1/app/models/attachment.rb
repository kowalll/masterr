# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  article_id :integer
#  name       :string(255)
#  url        :string(255)
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Attachment < ActiveRecord::Base
  validates :article_id, presence: true
  # validates :article_id, uniqueness: true
  validates :url, format: /http/
  belongs_to :article
  acts_as_list scope: :todo_list
end
