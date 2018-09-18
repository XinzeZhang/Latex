## 注意

MacOS 环境下在vs code中未经配置使用 latex workshop 插件的 formatting 功能会出现报错提示

```
BEGIN failed--compilation aborted at /Library/TeX/texbin/latexindent 
```

解决方法为安装以下latexindent依赖：
```
sudo cpan Log::Log4perl
sudo cpan Log::Dispatch
sudo cpan YAML::Tiny
sudo cpan File::HomeDir
sudo cpan Unicode::GCString
```

若需要代理，则可以安装与使用proxychains-ng工具在终端进行代理。