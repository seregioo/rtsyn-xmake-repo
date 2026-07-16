package("rtsyn-node")

set_homepage("https://github.com/seregioo/rtsyn-node")
set_description("C library for creating a node for RTSyn")
set_license("GPL-3.0-or-later")

add_urls("https://github.com/seregioo/rtsyn-node.git")

add_deps("rtsyn-port")

on_install(function(package)
	import("package.tools.xmake").install(package)
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/node.h"))
end)
