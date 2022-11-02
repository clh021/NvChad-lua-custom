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
手动安装
Nvim 有內建的 LSP Client，但你還是得要安裝你所使用的語言的 LSP Server 才有辦法使用。NvChad 使用nvim-lspconfig 插件，要是以前就用這個插件的話，使用 LSP 的方式與快捷鍵應該就一模一樣。要安裝各語言的 LSP Server 的話，NvChad 是用 nvim-lspinstall，你可以查這個連結看有哪些支援的語言。舉例來說，你要安裝 rust 的話，就是：
:LspInstall rust

自动安装
:Mason
可以出现要安装的服务，相应语言服务器上 使用 `i` 即可开始安装
使用 `Ctrl+f` 出现语言名，输入相应的语言名或者对应编号，即可出现候选的语言服务器，可能包含不同功能的各项语言服务，可以考虑全部安装

```
