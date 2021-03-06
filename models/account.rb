class Account
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :name, String
  property :email, String
  property :uid, String
  property :provider, String
  property :hay_notificacion, Integer, :default  => 0

  def notificar
    return 'Hay nuevas evaluaciones' if hay_notificacion == 1
    'Mis eventos'
  end

  def friendly_name
    name.nil? ? uid : name
  end

  def self.create_with_omniauth(auth)
    account = Account.new
    account.provider = auth['provider']
    account.uid      = auth['uid']
    account.name = auth['info']['nickname'] || auth['info']['name'] # warn: this is for twitter
    account.save
    account
  end
end
