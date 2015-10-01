module CheckinsHelper
  def setup_checkin(checkin)
    checkin.location ||= Location.new
    checkin
  end
end
