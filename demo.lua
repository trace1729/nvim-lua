local line = "module AXI4Xbar(	// rocket-chip/src/main/scala/amba/axi4/Xbar.scala:56:9"

local pattern = ".*// ([^:]+):(%d+):(%d+)"
local file_name, line_nr, col_nr = string.match(line, pattern)

print(file_name)
print(line_nr)
print(col_nr)
