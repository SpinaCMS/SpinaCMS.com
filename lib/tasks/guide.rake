namespace :guide do

  task sync: :environment do
    syncer = SyncGuide.new
    syncer.sync!
  end

end