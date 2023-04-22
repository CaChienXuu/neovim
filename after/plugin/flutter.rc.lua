local status, flutter = pcall(require, 'flutter-tools')
if (not status) then return end

flutter.setup {
  ui = {
    border = "rounded",
    notification_style = 'native'
  },
  decoration = {
    statusline = {
      device = true
    }
  },
  debugger = {
    enabled = true,
    run_via_dap = true,
  },
  outline = { auto_open = false },
  decorations = {
    statusline = { device = true, app_version = true },
  },
  widget_guides = { enabled = true, debug = true },
  dev_log = { enabled = false, open_cmd = "tabedit" },
  lsp = {
    color = {
      enabled = true,
      background = true,
      virtual_text = true,
    },
    settings = {
      showTodos = true,
      renameFilesWithClasses = "prompt",
    },
  },
}
