includes(path.join(os.scriptdir(), "..", "..", "..", "includes", "rtsyn_source.lua"))

local package_name = "rtsyn-port"

package(package_name)

set_homepage("https://github.com/seregioo/" .. package_name)
set_description("C library that implements the runtime for RTSyn")
set_license("GPL-3.0-or-later")

add_deps("rtsyn-port", "rtsyn-node", "rtsyn-collection", "rtsyn-abi")
rtsyn_source(package_name, "https://github.com/seregioo/" .. package_name .. ".git")

on_install(function(package)
	import("package.tools.xmake").install(package)
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/runtime.h"))
end)
