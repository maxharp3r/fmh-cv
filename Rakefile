task :default => [:pdf]

task :pdf do
  sh 'pandoc -f markdown -o resume.pdf --template=default.latex --variable mainfont=Georgia --variable geometry=margin=1in resume.md'
end
