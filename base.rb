
# Use Markdown for README
run "rm README.rdoc"
run "touch README.md"

# Eliminate Test::Unit to make way for rspec
run "rm -rf test"
