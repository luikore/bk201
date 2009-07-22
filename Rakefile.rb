require 'fileutils'
include FileUtils

desc 'generate new gemspec'
task :'bk201.gemspec' do
  # add include files
  gs = File.read 'bk201.gemspec'
  files = Dir.glob("{lib}/**/*").
    select{|f| f=~ /\.(rb|c|rdoc|bat)/}.
    map{|e|"\"#{e}\""}.join(',')
  gs.sub! /\ \ files\ =\ \[.+?\]/, "  files = [#{files}]"

  # new version
  ver_re = /s\.version\ =\ \"([\d\.]+)\"/
  gs =~ ver_re
  new_ver = $1.succ
  gs.sub! ver_re, "s.version = \"#{new_ver}\""

  puts 'new gemspec:'
  puts ('-' * 75)
  print gs
  puts ('-' * 75)
  File.open 'bk201.gemnewspec','w' do |f|
    f << gs
  end
  puts 'new gemspec saved to bk201.gemnewspec, use rake bk201.gemnewspec to replace old one'
end

desc 'replace old gemspec with new one'
task :'bk201.gemnewspec' do
  if File.exist? 'bk201.gemnewspec'
	rm 'bk201.gemspec'
	mv 'bk201.gemnewspec', 'bk201.gemspec'
  else
	puts 'bk201.gemspec_new not exist'
  end
end
