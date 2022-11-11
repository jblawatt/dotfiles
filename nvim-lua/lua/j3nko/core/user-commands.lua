
vim.api.nvim_create_user_command("Trun", function(opts)
    vim.cmd ("term " .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunV", function(opts)
    vim.cmd ("vsplit term://" .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunS", function(opts)
    vim.cmd ("split term://" .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunMake", function(opts)
    vim.cmd ("term make " .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunPy", function(opts)
    vim.cmd ("term python " .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunSPy", function(opts)
    vim.cmd ("split term://python " .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunVPy", function(opts)
    vim.cmd ("vsplit term://python " .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunVMake", function(opts)
    vim.cmd ("vsplit term://make " .. opts.args)
end, {nargs = 1})


vim.api.nvim_create_user_command("TrunSMake", function(opts)
    vim.cmd ("split term://make " .. opts.args)
end, {nargs = 1})

