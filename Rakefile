task :default => [:cv_pdf]

task :cv_pdf do
  sh 'pandoc -f markdown -o cv.pdf --template=default.latex --variable geometry=margin=1in cv.md'
end
