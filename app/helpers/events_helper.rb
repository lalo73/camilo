# Helper methods defined here can be accessed in any controller or view in the application

Camilo::App.helpers do
    # def simple_helper_method
    #  ...
    # end

  def render_date(date)
    return date.to_date if date.is_a?(Date)
    ''
  end

  def host_url
  	ENV['HOST_URL']
  end

  def generate_event_link(event_slug)
    "#{server_url}events/rate/#{event_slug}"
  end

  def render_rating_value(rating)
    self.rating_by rating.value
  end

  def rating_by(value)
    return ':-)' if value == 1
    return ':-|' if value == 0
    ':-('
  end

  def login_url
    #Padrino.env == :development ? '/login' : '/auth/twitter'
    "/login"
  end
end
