# 快捷键

## 光标移动
### 普通模式
| 键盘映射 | 功能 |
|--------------- | --------------- |
| H   | 行首   |
| L   | 行尾   |
| J   | 下5行   |
| K   | 上5行  |
| W   | 前5词
| B   | 后5词  |
### 插入模式
| 键盘映射 | 功能 |
|--------------- | --------------- |
| Ctrl h   | 行首   |
| Ctrl e   | 行尾   |
| Ctrl f   | w  |
| Ctrl b   | b  |

## 窗口

### 窗口导航

| 键盘映射 | 功能 |
| --- | --- |
| ;k | 转到上面的窗口 |
| ;j | 转到下面的窗口 |
| ;h | 转到右侧窗口 |
| ;l | 转到左侧窗口 |

### 窗口调整大小
| 键盘映射 | 功能 |
| --- | --- |
| Ctrl Shift Up | 调整窗口上边框的大小 |
| Ctrl Shift Down | 调整窗口底部边框的大小 |
| Ctrl Shift Left | 调整窗口左边框的大小 |
| Ctrl Shift Right | 调整窗口右边框的大小 |

## 搜索
| 键盘映射 | 功能 |
| --- | --- |
| N | 前往之前的比赛 |
| n | 前往以下比赛 |
| ESC | 关闭搜索突出显示 |

## 标签页
| 键盘映射 | 功能 |
| --- | --- |
| Ctrl-t h | 转到上一个选项卡 |
| Ctrl-t l | 转到下一个选项卡 |
| Ctrl-t n | 创建新标签 |

## tabbar
| 键盘映射 | 功能 |
| --- | --- |
|Tab            | 用于转到下一页。                |
|Shift Tab      | 用于转到上一页。                |
|Ctrl+c         | 用于打开选择器模式并关闭缓冲区。|
|Alt+Shift+left | 用于向前移动当前页面。           |
|Alt+Shift+Right| 用于向后移动当前页面。           |
|;p             | 用于拾取缓冲区。                 |


## 复制和粘贴
| 键盘映射 | 功能 | 笔记 |
| --- | --- | --- |
| y | 复制到注册 |  |
| p | 从注册表粘贴 |  |
| Ctrl-p | 从剪贴板粘贴 | 在正常和插入模式下 |
| Ctrl-y | 复制到剪贴板 | 仅在可视模式下 |

## 文字移动
| 键盘映射 | 功能 | 笔记 |
| --- | --- | --- |
| < | 减少一级缩进 | 在正常和选择模式下 |
| \> | 增加一级缩进 | 在正常和选择模式下 |

## 保存并退出
| 键盘映射 | 功能 | 笔记 |
| --- | --- | --- |
| ; w | 节省 |  |
| ; q | 退出缓冲区（删除最后一个缓冲区时自动退出 nvim） |  |
| : q | 退出 neovim、窗口、标签 |  |
| Alt ; | 离开插入模式（与 ESC 相同） | 仅在插入模式下 |

## 滚动
| 键盘映射 | 功能 |
| --- | --- |
| Ctrl j | 向下滚动 |
| Ctrl k | 向上滑动 |
| Ctrl f | 像“PgDown”键，向下滚动半页 |
| Ctrl b | 像“PgUp”键，向上滚动半页 |
| Ctrl y | 向上滚动，但光标不会移动 |
| Ctrl e | 向下滚动，但光标不会移动 |

## 其他
| 键盘映射 | 功能 |
| --- | --- |
| Ctrl-z | 反向更改 |


https://avimitin.github.io/nvim/en_us/workflows/git.html

fugitive 插件提供了一个命令:G来打开一个类似 magit 的面板。
| 键映射 | 功能性 |
| --- | --- |
| gis | staged |
| giu | unstaged |
| gid | diff |
| giD | diff |
| gic | 打开提交面板 |
| giP | git推送 |
| ;g | 打开 git 状态 |
| ;l | 打开懒惰的git |


;t tree
    R  refresh tree
    ?  help
    Ctrl v创建垂直拆分窗口
    Ctrl h以创建水平分割窗口。
;f fzf file
;s grep string
使用命令:Telescope查看其他有用的内置查找器
:VFiler
使用 Makefile，则可以使用:Dispatchor:Make 命令轻松构建和调试代码。
添加插件的方法: https://avimitin.github.io/nvim/en_us/plugins/packer.html

lightspeed 光速移动
两个字符搜索：
在正常/视觉模式下按下s可向前跳转。
在正常/视觉模式下按下S可向后跳跃。
在操作员挂起模式下按下x以向前跳转。
在操作员挂起模式下按下X可向后跳转。
操作员挂起模式是在您按下后d/x/cneovim 正在等待您的下一步操作的模式。
内联跳转：
在正常/视觉模式下按下f可向前跳转。
在正常/视觉模式下按下F可向后跳跃。
在操作员挂起模式下按下t以向前跳转。
在操作员挂起模式下按下T可向后跳转。

wildfire 野火
按 Enter, "", (), {}, [], '', 。``_ <tag></tag>这个插件会自动选择这个周围标志内的文本

Markdown
table
使用命令:TableModeToggle来快速改善编写表格的体验
preview
可以使用 surf 或者系统 firefox，google-chrome 来预览
生成样式目录 :GenTocGFM 或者GitLab风格 :GenTocGitLab

:Dispatch <Your Commands>
调度插件可以帮助您在单独的窗口中运行构建作业。如果您使用的是 tmux，它将在 tmux 中创建窗口。
如果构建作业包含任何错误，它将提示快速修复列表。
;d
| keymaps | function |
| --- | --- |
| `m<CR>` | `:Make<CR>` |
| `m<Space>` | `:Make<Space>` |
| m! | :Make! |
| m? | Show 'makeprg' |
| \``<CR>` | :Dispatch`<CR>` |
| \``<Space>` | :Dispatch`<Space>` |
| \`! | :Dispatch! |
| \`? | :FocusDispatch`<CR>` |
| '`<CR>` | :Start`<CR>` |
| '`<Space>` | :Start`<Space>` |
| '! | :Start! |
| '? | show b:start |
| g'`<CR>` | :Spawn`<CR>` |
| g'`<Space>` | :Spawn`<Space>` |
| g'! | :Spawn! |
| g'? | Show 'shell' |

splitjoin
Require tree-sitter.
lua/plugins/modules/enhance/config/init.lua
Press gS to split multiple line.
Press gJ to join multiple line.
https://avimitin.github.io/nvim/en_us/plugins/splitjoin.html

Sort
:Sort在视觉或正常模式下使用命令。
https://avimitin.github.io/nvim/en_us/plugins/sort.html

vale
vale 命令行工具在撰写文章时提供类似代码的 linting。该配置使用 null-ls.nvim 将其集成到 NeoVIM 中。

清理安装
# plugins directory
rm -rf ~/.local/share/nvim
# neovim cache file
rm -r ~/.cache/nvim
# neovim plugins load sequence
rm -r ~/.config/nvim/plugin





最终我们还是需要通读源码了解每一个地方时做什么用的，如果要实现什么需求可以改变哪里来做到
