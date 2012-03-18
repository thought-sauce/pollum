desc "This task is called by the Heroku scheduler add-on to load data form the epd site"
task :fetch_data => :environment do
    puts "Updating feed..."
    Reading.fetch_data
    puts "done."
end

