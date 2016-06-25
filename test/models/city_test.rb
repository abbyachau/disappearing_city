# == Schema Information
#
# Table name: cities
#
#  id                   :integer          not null, primary key
#  location             :string
#  rain_image_url       :string
#  sun_image_url        :string
#  webcam_url           :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  open_weather_city_id :string
#  temperature          :string
#  description          :string
#  weather_status       :string
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
