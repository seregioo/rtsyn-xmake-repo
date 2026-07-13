package("rtsyn-plugin")

set_homepage("https://github.com/seregioo/rtsyn-plugin")
set_description("C library for creating a plugin for RTSyn")
set_license("GPL-3.0-or-later")

add_urls("https://github.com/seregioo/rtsyn-plugin.git")

on_install(function(package)
	import("package.tools.xmake").install(package)
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/plugin.h"))
end)
