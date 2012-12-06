task :default => [:pdf]

task :pdf do
  sh "pandoc -f markdown -o resume.pdf -H header.tex --template=default.latex resume.md"
end
