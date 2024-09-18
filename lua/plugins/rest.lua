vim.filetype.add({
  extension = {
    ['http'] = 'http',
  },
})

return {
  { 'mistweaverco/kulala.nvim', 
    opts = {
      additional_curl_options = { "-k"},
      default_view = "headers_body",
      show_icons = "above_request"
    },
    keys = {
      { "<space>mr", ":lua require('kulala').run()<CR>", desc = "Make request" },
    },
  },
}
