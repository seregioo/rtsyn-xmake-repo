includes(path.join(os.scriptdir(), "..", "..", "..", "includes", "rtsyn_source.lua"))

local package_name = "rtsyn-value"

package(package_name)

set_homepage("https://github.com/seregioo/" .. package_name)
set_description("C library for creating a port for RTSyn")
set_license("GPL-3.0-or-later")

add_deps("rtsyn-abi")
rtsyn_source(package_name, "https://github.com/seregioo/" .. package_name .. ".git")

on_install(function(package)
	import("package.tools.xmake").install(package, nil, { target = package_name })
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/value.h"))
end)
