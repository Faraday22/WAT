#!/bin/env lua

-- Define ANSI escape codes for colors
local colorGold = "\27[33m"
local colorReset = "\27[0m"

--Vaiables & Functions
local function title()
  os.execute("clear")
  print(colorGold .."┓ ┏┏┓┏┳┓" ..colorReset)
  print(colorGold .."┃┃┃┣┫ ┃" ..colorReset)
  print(colorGold .."┗┻┛┛┗ ┻" ..colorReset)
  print(colorGold .. "--------------\n" ..colorReset)
  print(colorGold .."WAT the wallpaper applicance tool\n" ..colorReset)
end


local function startScreen()
  os.execute("clear")
  title()
  os.execute("sleep 0.5")
end


--start code
startScreen()

print(colorGold .."If stored in home directory enter 'Y/y' if not 'N/n'\n" ..colorReset)
local homeDir = io.read()

if homeDir == "Y" or homeDir == "y" then
  os.execute("clear")
  print(colorGold.."Enter the directory name" ..colorReset)
  local dirPath = io.read()
  os.execute("clear")

  os.execute("ls ~/" .. dirPath)
  print(colorGold .."Choose the file" ..colorReset)
  local imageName = io.read()
  os.execute("swaymsg output '*' bg ~/" ..dirPath.."/".. imageName.. " fill")
end

if homeDir == "N" or homeDir == "n" then
  os.execute("clear")
  print(colorGold.."Enter where directory is"..colorReset)
  local dirPath = io.read()
  os.execute("clear")

  os.execute("ls " .. dirPath)
  print(colorGold.."Choose the file"..colorReset)
  local imagePath = io.read()
  os.execute("swaymsg output '*' bg " ..dirPath.. "/".. imagePath .. " fill")
end
