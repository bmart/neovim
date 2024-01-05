require("settings")
require("plugins")
require("bindings")

local status, module = pcall(require, 'env')

if status then
  print "custom env loaded"
end



