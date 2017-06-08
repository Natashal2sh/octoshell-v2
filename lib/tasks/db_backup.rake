namespace :db do
  task :backup => :environment do
    time = Time.current
    tar = "/home/natasha/trueocto/#{time.strftime('%d%m%Y_%H%M')}.tar"
    system "pg_dump -U octo -f #{tar} -F tar new_octoshell"
    system "gzip #{tar}"
  end
end
