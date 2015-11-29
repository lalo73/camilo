migration 5, :add_video_link_to_events do
  up do
    modify_table :events do
      add_column :video_link, 'string'
    end
  end

  down do
    modify_table :events do
      remove_column :video_link
    end
  end
end
