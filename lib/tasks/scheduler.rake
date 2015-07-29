namespace :scheduler do
  desc "This task is called by the Heroku cron add-on"
  task :call_page => :environment do
    current_hour = Time.now.in_time_zone('Mountain Time (US & Canada)').hour
    unless current_hour >= 0 && current_hour < 7
      uri = URI.parse('http://worldproskiing.herokuapp.com/')
      Net::HTTP.get(uri)
    end
  end
end
