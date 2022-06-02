--                   ______     ___           __ __
--                  / ____/__  / (_)  __     / //_/_  ____  ______
--                 / /_  / _ \/ / / |/_/    / ,< / / / / / / / __ \
--                / __/ /  __/ / />  <     / /| / /_/ / /_/ / / / /
--               /_/    \___/_/_/_/|_|____/_/ |_\__, /\__,_/_/ /_/
--                                  /_____/    /____/
--                          nvim config file [plugins.lua]


-- package manager used: packer.nvim

return require('packer').startup(function()

    -- manages itself 
    use 'wbthomason/packer.nvim'

    -- theme (doesnt work as of now)
    -- use {
    --     'arcticicestudio/nord-vim',
    --      config = function() vim.cmd("colorscheme nord") end
    --     }

    use 'joshdick/onedark.vim'
        
end)
