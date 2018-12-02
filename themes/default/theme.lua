---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = "/home/domini/.config/awesome/themes/"

local theme = {}

theme.font          = "Open Sans 12"

theme.bg_normal     = "#D6D6D677"
theme.bg_focus      = "#F9F9F977"
theme.bg_urgent     = "#0A84FF"
theme.bg_minimize   = "#ECECEC"
theme.bg_systray    = theme.bg_focus
theme.bg_task	    = "#FFFFFF00"

theme.fg_normal     = "#444444"
theme.fg_focus      = "#222222"
theme.fg_urgent     = "#F9F9F9"
theme.fg_minimize   = "#222222"

theme.useless_gap   = dpi(10)
theme.border_width  = dpi(0)
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = theme.bg_urgent

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
taglist_square_size, theme.fg_normal
)

--theme.tasklist_disable_task_name = true

theme.tasklist_fg_normal = theme.fg_focus
theme.tasklist_bg_normal = theme.bg_task
theme.tasklist_fg_focus = theme.fg_urgent
theme.tasklist_bg_focus = theme.bg_urgent
theme.taglist_fg_normal = theme.fg_focus
theme.taglist_bg_normal = theme.bg_focus
theme.taglist_fg_focus = theme.fg_urgent
theme.taglist_bg_focus = theme.bg_urgent

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(25)
theme.menu_width  = dpi(200)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_hover.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/min-normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/min-hover.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/max-normal.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/max-normal.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/max-hover.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/max-hover.png"

-- theme.wallpaper = "/home/domini/Bilder/bg1.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairh.png"
theme.layout_fairv = themes_path.."default/layouts/fairv.png"
theme.layout_floating  = themes_path.."default/layouts/floating.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifier.png"
theme.layout_max = themes_path.."default/layouts/max.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreen.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottom.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleft.png"
theme.layout_tile = themes_path.."default/layouts/tile.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletop.png"
theme.layout_spiral  = themes_path.."default/layouts/spiral.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindle.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernw.png"
theme.layout_cornerne = themes_path.."default/layouts/cornerne.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersw.png"
theme.layout_cornerse = themes_path.."default/layouts/cornerse.png"

-- Generate Awesome icon:
theme.awesome_icon = themes_path.."default/arch1.png"--(
--    theme.menu_height, theme.bg_focus, theme.fg_focus
--)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
