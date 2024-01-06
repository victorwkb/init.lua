local map  = function(mode, l, r, opts)
  local options = { silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  --vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  vim.keymap.set(mode, l, r, options)
end

return { map = map }
