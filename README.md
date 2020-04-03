# Introduction
This is a [Latex Respository] of Xinze Zhang 

The respository is made up with tutorial of texlive2017-install in ubuntu17.10,
and templates modified by xinze zhang.

Most of the works were finished in the CIDM&JHL in HUST.


# texlive2017-install

## 准备
首先从mirror.hust.edu.cn中下载texlive 2017的iso文件。

因为texlive安装脚本为Perl语言，下载完成之后，安装Perl。
```
sudo apt-get install perl-tk
```
## 安装
安装ubuntu下的iso挂载软件，如：Furius ISO Mount
挂载之后的iso文件会自动被解压到/mnt/

建议采用GUI方式安装
```
cd /mnt
# 以 GUI 方式安装
sudo ./install-tl -gui=perltk
```

默认是安装在/usr/local/texlive目录，可更改为/home，否则下一步即可。

结束后在furius ios mount中卸载ios文件。

## 修改环境变量
对于bash shell，在~/.bashrc中添加tex环境变量。

```
# TeX Live 2017
export PATH=${PATH}:/usr/local/texlive/2017/bin/x86_64-linux
# 如果是32位最后改为'i386-linux'
export MANPATH=${MANPATH}:/usr/local/texlive/2017/texmf-dist/doc/man
export INFOPATH=${INFOPATH}:/usr/local/texlive/2017/texmf-dist/doc/info
```

因为tex的宏包管理软件必须要在sudo或root下运行，所以需要修改sudo环境下的环境变量
```
sudo visudo
```

ubuntu默认采用nano编辑器打开，在Defaults secure_path中加入Tex Live的bin目录。
添加完成后ctrl+x推出，选择Y确认保存，不修改文件名，Enter确认退出。

## 测试
运行tex --version，进行测试，若显示tex版本，则已安装成功。
```
tex --version
```

## 更新

在ubuntu上 tive live的宏包管理工具tlmgr较windows稳定。可采用GUI界面更新。
```
# 指定图形界面语言为中文
tlmgr -gui -gui-lang zh_CN
```

## 注意

在texlive2017下使用华科模版即hustreport或hustthesis会出现编译报错!

原因在于hustreport/hustthesis默认使用thuthesis.bst，而在texlive2017下，/usr/local/texlive/2017/texmf-dist/bibtex/bst/thuthesis下的bst文件为thuthesis-numeric.bst和thuthesis-author-year.bst，在bibtex编译时找不到thuthesis.bst文件，导致latex-toolchain/latex-recipes停止报错。

解决办法为在texlive2016的解压包中，找到thuthesis.bst文件，或找到本仓库的./latex-word/hust-thesis文件夹内已下载的thuthesis.bst文件，复制到/usr/local/texlive/2017/texmf-dist/bibtex/bst/thuthesis路径下，然后sudo texhash刷新索引，即可解决因缺失thuthesis.bst带来的编译报错问题。

如果在MacOS下，使用VS Code进行format报错，请安装以下插件
```
sudo cpan Log::Log4perl
sudo cpan Log::Dispatch
sudo cpan YAML::Tiny
sudo cpan File::HomeDir
sudo cpan Unicode::GCString
```
如果遇到了缺失字体报错，请安装相应缺失字体后，刷新字体缓存
* Refresh the cache of fonts(Ubuntu):
```
$ fc-cache -fv
```
* Refresh the cache of fonts(Mac):
```
$ brew install fontconfig
$ fc-cache -fv
```