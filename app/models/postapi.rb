# == Schema Information
#
# Table name: postapis
#
#  id         :integer          not null, primary key
#  message    :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Postapi < ApplicationRecord
end
