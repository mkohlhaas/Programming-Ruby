Dir.chdir("testdir")

Dir.glob("config.?")
Dir.glob("*.[a-z][a-z]")
Dir.glob("*.[^r]*")
Dir.glob("*.{rb,json}")
Dir.glob("*")
Dir.glob(%w[*.rb *.json])
Dir.glob("*", File::FNM_DOTMATCH)

Dir.chdir("..")
Dir.glob("code/**/fib*.rb")
Dir.glob("**/rdoc/fib*.rb")

Dir["config.?"]
Dir["*.json"]
Dir["*.rb"]
Dir["*.rb", "*.json"]
