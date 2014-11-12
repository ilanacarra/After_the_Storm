---
-- Checks for Wesnoth version compatibility
---

local function do_bug(msg, may_ignore)
	wesnoth.wml_actions.bug { message = msg, should_report = false, may_ignore = may_ignore }
end


local ver = wesnoth.game_config.version
local v = wesnoth.compare_versions

-- #textdomain wesnoth-After_the_Storm
local _ = wesnoth.textdomain "wesnoth-After_the_Storm"

if v(ver, '<', '1.11.11') then
	do_bug( _ "After the Storm requires Wesnoth 1.11.11 or later.", false)
end

if v(ver, '>=', '1.13.0') then
	do_bug( _ "After the Storm has not been tested with Wesnoth 1.13.x and there may be broken functionality. Please use version 1.12.0 or later.", false)
end
