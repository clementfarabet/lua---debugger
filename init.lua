
require 'torch'
require 'sys'
torch.include('debugger', 'debugger.lua')

_DEBUG_ = true

print("INFO: running Lua in debug mode (global variable _DEBUG_ set to true)")
print("> to insert a breakpoint, use the snippet:")
print(sys.COLORS.blue .. "if _DEBUG_ then pause() end" .. sys.COLORS.none)
