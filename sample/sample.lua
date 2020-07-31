-- update the target below to a valid binary file
--local target = [[C:\Users\Public\Lua\5.1lfw\lua.exe]]
local target = [[C:\tools\luajit-rocks\dist\libluajit.dll]]
package.path='d:/study/baddlls/pe-parser/src/?.lua;'..package.path
local pe = require("pe-parser")

local obj, err = pe.parse(target)
if obj then
  obj:dump()
 -- print(pe.msvcrt(target))
else 
  print(err)
end


