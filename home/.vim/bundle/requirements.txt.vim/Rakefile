#!/usr/bin/env rake

task :ci => [:dump, :currentv, :test]

task :dump do
  sh 'vim --version'
end

task :currentv do
  sh 'git ls-files | xargs grep -n \'Version:\''
end

task :test do
  sh 'bundle exec vim-flavor test'
end

task :dep => [:updatedep, :cleandep]

task :updatedep do
  sh 'bundle update'
  sh 'bundle install --path vendor/bundle'
end

task :cleandep do
  sh 'bundle clean'
end

# vim: et sw=2 ts=2 sts=2:
