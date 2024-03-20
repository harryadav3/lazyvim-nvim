return {
  "Pocco81/AutoSave.nvim",

  config = function()
    require("auto-save").setup({
      enabled = true,

      execution_message = {
        message = function()
          return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      trigger_events = { "InsertLeave,TextChanged" },
    })
  end,
}
