-- NOTE: This rockspec is used for running busted tests only,
-- not for publishing to LuaRocks.org

local _MODREV, _SPECREV = "scm", "-1"
rockspec_format = "3.0"
package = "MobDebug"
version = _MODREV .. _SPECREV

dependencies = {
  "lua >= 5.1",
  "luasocket >= 2.0",
  "dkjson >= 2.0",
}

source = {
  url = "git://github.com/bb010g/MobDebug.git",
}

build = {
  type = "builtin",
  modules = {
    ["mobdebug"] = "src/mobdebug.lua",
  },
  copy_directories = {
    "examples",
  },
}
