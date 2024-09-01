local client = vim.lsp.start_client {
    name = "ppls",
    cmd = { "/home/dato/code/gostuff/ppls/bin/ppls" },
}

if not client then
    vim.notify "Client Error"
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end,
})
