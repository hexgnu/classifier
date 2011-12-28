require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require 'rubygems/package_task'

PKG_VERSION = "1.3.4"

PKG_FILES = FileList[
    "lib/**/*", "bin/*", "test/**/*", "[A-Z]*", "Rakefile", "html/**/*"
]

desc "Default Task"
task :default => [ :test ]

# Run the unit tests
desc "Run all unit tests"
Rake::TestTask.new("test") do |t|
  t.libs << "lib"
  t.pattern = 'test/*/*_test.rb'
  t.verbose = true
end

# Genereate the RDoc documentation
desc "Create documentation"
RDoc::Task.new(:doc) do |rdoc|
  rdoc.title = "Ruby Classifier - Bayesian and LSI classification library"
  rdoc.rdoc_dir = 'html'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc "Report code statistics (KLOCs, etc) from the application"
task :stats do
  require 'code_statistics'
  CodeStatistics.new(
    ["Library", "lib"],
    ["Units", "test"]
  ).to_s
end
