local wk = require("which-key")
wk.setup({})

local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
    local float = Terminal:new({
        direction = "float"
    })
    return float:toggle()
end
local toggle_lazygit = function()
    local lazygit = Terminal:new({
        cmd = "lazygit",
        direction = "float"
    })
    return lazygit:toggle()
end

local mappings = {
    q = {
        name = "File Options",
        q = {":q!<cr>", "Quit"},
        Q = {":q<cr>", "Quit Without Saving"},
        w = {":wq<cr>", "Save & Quit"},
        s = {":w<cr>", "Save"},
        S = {":wa<cr>", "Save All Opened"},
        x = {":bdelete<cr>", "Close"}
    },
    f = {
        name = "Telescope",
        b = {":lua require(\"core.file\").buffers()<cr>", "Buffers"},
        e = {":Telescope emoji<cr>", "Emoji Picker"},
        f = {":Telescope find_files<cr>", "Find Files"},
        g = {":Telescope oldfiles<cr>", "Recently Opened"},
        m = {":Telescope media_files<cr>", "Find Media"},
        r = {":Telescope live_grep<cr>", "Find String"}
    },
    t = {
        name = "Terminal",
        t = {":ToggleTerm<cr>", "Split Below"},
        f = {toggle_float, "Floating Terminal"},
        l = {toggle_lazygit, "LazyGit"}
    },
    p = {
        name = "Packer",
        r = {":PackerClean<cr>", "Remove Unused Plugins"},
        c = {":PackerCompile profile=true<cr>", "Recompile Plugins"},
        i = {":PackerInstall<cr>", "Install Plugins"},
        p = {":PackerProfile<cr>", "Packer Profile"},
        s = {":PackerSync<cr>", "Sync Plugins"},
        S = {":PackerStatus<cr>", "Packer Status"},
        u = {":PackerUpdate<cr>", "Update Plugins"}
    },
    s = {
        name = "Text",
        a = {":SimpleAlign ", "Align Text"}

    }
}

local opts = {
    prefix = "<leader>"
}
wk.register(mappings, opts)
