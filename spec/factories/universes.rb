# == Schema Information
#
# Table name: universes
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  published   :boolean          default("false"), not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_universes_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :universe do
    name 'test name'
    description 'test description'
    association :user
  end
end