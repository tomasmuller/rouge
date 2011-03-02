# script to load existing jars located at lib folder
# check the links bellow:
# http://www.leonardoborges.com/writings/2009/07/01/jruby-on-rails-and-legacy-java-apps-managing-dependencies/
# http://kenai.com/projects/jruby/pages/JRubyOnRailsWithSpring
# if you modify this file, restart the server
Dir.entries("#{RAILS_ROOT}/lib").sort.each do |entry|
  if entry =~ /.jar$/
    require entry
  end
end