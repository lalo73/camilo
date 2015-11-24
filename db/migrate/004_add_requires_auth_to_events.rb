migration 4, :add_requires_auth_to_events do
  up do
    modify_table :events do
      add_column :requires_auth, 'boolean', default: false
    end
  end

  down do
    modify_table :events do
      remove_column :requires_auth
    end
  end
end
