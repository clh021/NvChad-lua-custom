# NvChad-lua-custom
NvChad custom config

```vimCommand
# 查看/导出 所有快捷键配置
:nmap for normal mode mappings
:vmap for visual mode mappings
:imap for insert mode mappings
# 导出
:redir! > nvchad.keymap.txt
:silent verbose map
:redir END
:pwd
```

```bash
Nvim 有內建的 LSP Client，但你還是得要安裝你所使用的語言的 LSP Server 才有辦法使用。NvChad 使用nvim-lspconfig 插件，要是以前就用這個插件的話，使用 LSP 的方式與快捷鍵應該就一模一樣。要安裝各語言的 LSP Server 的話，NvChad 是用 nvim-lspinstall，你可以查這個連結看有哪些支援的語言。舉例來說，你要安裝 rust 的話，就是：
:LspInstall rust

```
