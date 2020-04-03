hustreport
==========

## Attention 注意

在texlive2017/2018下使用该中文模板时，会出现bibtex的报错，提示找不到thuthesis.bst。

原因在于，此中文模板的默认bibstyle文件为thuthesis.bst文件，而在texlive2017下，thuthesis的bibstyle为thuthesis-numeric.bst和thuthesis-author-year.bst，所以在bibtex编译时找不到thuthesis.bst文件。

解决办法为：texlive2016的解压包中，找到thuthesis.bst文件（或见此目录），复制到/usr/local/texlive/2017/texmf-dist/bibtex/bst/thuthesis路径下，然后sudo texhash刷新索引。就可以了。

使用前需安装字体，并刷新字体缓存。否则lualatex或xelatex会寻找字体，耗费更长的时间编译tex。具体方法如下。
* 安装字体（见此目录，注：字体未获Adobe授权，请勿商业使用）:
    * `AdobeSongStd-Light`
    * `AdobeKaitiStd-Regular`
    * `AdobeHeitiStd-Regular`
    * `AdobeFangsongStd-Regular`

* 刷新字体缓存(Ubuntu):
```
$ fc-cache -fv
```
* 刷新字体缓存(Mac):
```
$ brew install fontconfig
$ fc-cache -fv
```

An Unofficial Graduate Report Template in LaTeX for [Huazhong University of Science and Technology](http://www.hust.edu.cn). See other templates in <http://hust-latex.github.io>.
>   中文版[点击这里](https://github.com/hust-latex/hustreport/blob/master/README.zh-cn.md)。
## Requirement

* Install the latest version of [TeXLive](http://www.tug.org/texlive/)(Recommend) or [MiKTeX](http://miktex.org/). Please ensure that all the packages are up-to-date.
* Install following Chinese fonts:
    * `AdobeSongStd-Light`
    * `AdobeKaitiStd-Regular`
    * `AdobeHeitiStd-Regular`
    * `AdobeFangsongStd-Regular`

* Refresh the cache of fonts(Ubuntu):
```
$ fc-cache -fv
```
* Refresh the cache of fonts(Mac):
```
$ brew install fontconfig
$ fc-cache -fv
```
## Installation

### Install into local

Use the command below to install this template into local.
```
make install
```
If you need uninstall it, use the command below.
```
make uninstall
```

For Windows User who don't install `Make`, use the command below to install.
```
makewin32.bat install
```
If you need uninstall it, use the command below.
```
makewin32.bat uninstall
```
Although `makewin32.bat` behaves much like `Makefile`, I still recommend you install `Make` into your Windows. You can download it from [here](http://gnuwin32.sourceforge.net/packages/make.htm).

### Use without installation

If you want to use this template temporary rather than installing it into local for long term use. Run below command to unpack the package.
```
make unpack
```
For Windows User who don't install `Make`, use the command below to unpack the package.
```
makewin32.bat unpack
```
Then copy following files from directory `hustreport` into your TeX project root directory:
* `hustreport.cls`
* `hust-title.eps`
* `hust-title.pdf`

## Usage

**Important : This template can only be compiled by XeLaTeX or LuaLaTeX[Recommend].**

* Manual: See [hustreport.pdf](https://github.com/hust-latex/hustreport/raw/master/hustreport/hustreport.pdf).
* Example: See [hustreport-zh-example.pdf](https://github.com/hust-latex/hustreport/raw/master/hustreport/hustreport-zh-example.pdf) and [hustreport-en-example.pdf](https://github.com/hust-latex/hustreport/raw/master/hustreport/hustreport-en-example.pdf).

## Disclaimer

This template is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

## License

Original works are done by [Xu Cheng](https://github.com/xu-cheng). LPPL v1.3 is chosen to be the license of the project. Use as you desire.
```
Copyright (C) 2013-2014 by Xu Cheng <xucheng@me.com>
              2014-2016 by hust-latex <https://github.com/hust-latex>

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is hust-latex Organization.

This work consists of the files hustreport.dtx,
hustreport.ins and the derived file hustreport.cls 
along with its document and example files.
```

