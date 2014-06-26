namespace :releasr do
  desc "Install RELEASR for the first time"
  task :install => :environment do
    `bundle exec rake db:setup`
    `bundle exec rake db:migrate`
    `bundle exec rake db:seed`
  end
end