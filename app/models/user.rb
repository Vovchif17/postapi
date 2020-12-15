# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  email       :string
#  first_name  :string
#  second_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
  validate_precence_of :email
  validate_uniqueness_of :email
end
