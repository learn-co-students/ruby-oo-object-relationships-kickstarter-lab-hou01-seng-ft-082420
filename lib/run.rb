require 'pry'

require_relative "./backer.rb"
require_relative "./project.rb"
require_relative "./project_backer.rb"

alex = Backer.new("Alex")
karo = Backer.new("Karo")
brian = Backer.new("Brian")
zack = Backer.new("Zack")

p1 = Project.new("runnin hot")
p2 = Project.new("cray cray")
p3 = Project.new("S&S 5E")

#binding.pry

pledge1 = ProjectBacker.new(p1, karo)
pledge2 = ProjectBacker.new(p3, alex)
pledge3 = ProjectBacker.new(p3, zack)
pledge4 = ProjectBacker.new(p1,alex)

binding.pry
0





