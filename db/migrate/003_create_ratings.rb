migration 3, :create_ratings do
  up do
    create_table :ratings do
      column :id, Integer, :serial => true
      column :value, Integer
      column :comment, String, :length => 255
      column :created_at, Date
      column :event_id, Integer
      column :account_id, Integer, :default => -1
    end
  end

  down do
    drop_table :ratings
  end
end
