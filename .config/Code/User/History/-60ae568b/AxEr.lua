--                   ______     ___           __ __
--                  / ____/__  / (_)  __     / //_/_  ____  ______
--                 / /_  / _ \/ / / |/_/    / ,< / / / / / / / __ \
--                / __/ /  __/ / />  <     / /| / /_/ / /_/ / / / /
--               /_/    \___/_/_/_/|_|____/_/ |_\__, /\__,_/_/ /_/
--                                  /_____/    /____/
--                          nvim config file [init.lua]

-- import split configs
-- syntax: `require()` where () -> lua/{file}

require("settings")
require("utils")
require("plugins")
require("maps")

-- more settings