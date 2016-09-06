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

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
