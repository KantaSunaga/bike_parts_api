require File.expand_path(File.dirname(__FILE__) + "/environment.rb")

set :output, 'log/crontab.log'
set :development, :production

every :hour do
  runner 'Stock.catch_and_save_all_price'
end

# every 1.minutes do
  # runner 'Stock.catch_and_save_all_price'
# end
