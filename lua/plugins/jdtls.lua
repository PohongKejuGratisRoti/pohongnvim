return {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
        require("plugins.jdtls_setup"):setup()
    end
}
