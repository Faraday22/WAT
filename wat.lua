--Vaiables & Functions
local function title()
  os.execute("clear")
  print("┓ ┏┏┓┏┳┓")
  print("┃┃┃┣┫ ┃")
  print("┗┻┛┛┗ ┻")
  print("---------\n")
  print("WAT the wallpaper applicance tool\n")
end


local function startScreen()
  os.execute("clear")
  title()
  os.execute("sleep 1")
end


--start code
startScreen()

print("If stored in home directory enter 'Y/y' if not 'N/n'\n")
local homeDir = io.read()

if homeDir == "Y" or homeDir == "y" then
  os.execute("clear")
  print("Enter the directory name")
  local dirPath = io.read()
  os.execute("clear")

  os.execute("ls ~/" .. dirPath)
  print("Choose the file")
  local imageName = io.read()

  os.execute("swaymsg output '*' bg ~/" ..dirPath.."/".. imageName.. " fill")
end

if homeDir == "N" or homeDir == "n" then
  os.execute("clear")
  print("Enter where directory is")
  local dirPath = io.read()
  os.execute("clear")

  os.execute("ls " .. dirPath)
  print("Choose the file")
  local imagePath = io.read()

  os.execute("swaymsg output '*' bg " ..dirPath.. "/".. imagePath .. " fill")
end
