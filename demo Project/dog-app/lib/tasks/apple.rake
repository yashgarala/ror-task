desc "Print reminder about eating more fruit."

task :apple do
  puts "Eat more apples!"
end

task :clean_cache do
    rm_r FileList["tmp/cache/*"]
end

task :import do
    puts "Importing data..."
end
task compress: FileList["/tmp/*.txt"].ext(".txt.gz")
    rule '.txt.gz' => '.txt' do |t|
    sh "gzip", "-k", "-f", t.source
end