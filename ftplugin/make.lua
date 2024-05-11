-- ftplugin/haskell.lua
local cmp = require('cmp')
local sources = cmp.get_config().sources
cmp.setup.buffer({ sources = sources })
