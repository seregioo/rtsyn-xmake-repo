package("rtsyn-port")

set_homepage("https://github.com/seregioo/rtsyn-port")
set_description("C library that implements the port for RTSyn")
set_license("GPL-3.0-or-later")

add_urls("https://github.com/seregioo/rtsyn-port.git")

on_install(function(package)
	import("package.tools.xmake").install(package)
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/port.h"))
end)
