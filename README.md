> Vim是一个类似于Vi的著名的功能强大、高度可定制的文本编辑器，在Vi的基础上改进和增加了很多特性。

# 快速安装配置

### windows下安装

1. 在[vim官网](https://www.vim.org/)下载[windows版本](https://www.vim.org/download.php#pc)安装程序（直接下载gvim的exe文件即可）；
2. 下载后双击exe文件执行安装（这里最好安装full版本的）；
3. 软件安装后如果没有添加环境变量需要手动添加下环境变量；
4. 下载备份好的[配置文件](https://github.com/mounui/vim/blob/master/_vimrc)复制到vim安装目录下覆盖原有配置文件，注意覆盖之前先备份原有_vimrc文件；
5. 安装配置[Vundle插件管理工具](https://mounui.com/173.html)，进入vim使用Vundle安装配置文件中的插件（注意目录权限，可以使用超级管理员执行安装）；
6. 解决配色主题报错，我这里配置的是molokai，将使用Vundle下载的molokai主题复制到colors目录；
7. 配置[VimTweak插件](https://mounui.com/208.html)和[vim-airline插件](https://mounui.com/331.html)；