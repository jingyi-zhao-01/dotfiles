package.path = package.path .. ";/home/jingyi/PycharmProjects/leetcode-qa/packages/submissions/src/?.lua"
local db_saver = require("submission_db_saver")

return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lang = "python3",
    editor = { reset_previous_code = true },
    hooks = {
      ["submit"] = {
        function(question, buffer, item)
          db_saver.save_submission(question, buffer, item)
        end,
      },
      ['question_enter'] = {
        function(question)
          db_saver.start_timer(question)
        end,
      }
    },
  },
}
