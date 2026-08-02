includes(path.join(os.scriptdir(), "..", "..", "..", "includes", "rtsyn_source.lua"))

local package_name = "rtsyn-module-loader"

package(package_name)

set_homepage("https://github.com/seregioo/" .. package_name)
set_description("C library for loading a module for RTSyn")
set_license("GPL-3.0-or-later")

add_deps("rtsyn-abi", "libuv")
rtsyn_source(package_name, "https://github.com/seregioo/" .. package_name .. ".git")

on_install(function(package)
	import("package.tools.xmake", { alias = "xmake" })

	local envs = xmake.buildenvs(package)
	envs.XMAKE_CONFIGDIR = path.join(package:builddir(), ".xmake")

	xmake.install(package, { tests = false }, { target = package_name, envs = envs })
end)

on_test(function(package)
	assert(package:has_cincludes("rtsyn/module_loader.h"))
end)
