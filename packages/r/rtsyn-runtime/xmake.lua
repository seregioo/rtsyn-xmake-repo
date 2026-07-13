package("rtsyn-runtime")

set_homepage("https://github.com/seregioo/rtsyn-runtime")
set_description("C library that implements the runtime for RTSyn")
set_license("GPL-3.0-or-later")

add_urls("https://github.com/seregioo/rtsyn-runtime.git")

add_deps("rtsyn-port", "rtsyn-node")

on_install(function(package)
	import("package.tools.xmake").install(package)
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/runtime.h"))
end)
