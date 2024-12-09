-- nvim-anywhere - use Nvim whenever, wherever
-- Original Author: Chris Knadler
-- Fork Author: Oscar Morrison
-- Homepage: https://github.com/oscarmorrison/nvim-anywhere
--
-- Get the current application's name

tell application "System Events"
  copy (name of application processes whose frontmost is true) to stdout
end tell
