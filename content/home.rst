搭建自己的博客
##############

:date: 2023-11-03
:modified: 2023-11-03 17:24
:tags: 工具; 博客
:category: 工具
:slug: build blog for myself
:authors: 呼呼大睡
:summary: 使用Pelican、GitHub Pages搭建博客，用ReStructuredText写博客。

.. This will be turned into :abbr:`HTML (HyperText Markup Language)`.

还不太懂Pelican静态博客工具和ReStructedText（rst）格式怎么用。

| Pelican文档和教程：
| https://docs.getpelican.com/en/latest/index.html

| GitHub Pages使用方法：
| https://pages.github.com/
| 在一个仓库中建立两个分支，一个存放Pelican要求的写作内容和配置文件，另一个存放输出的静态站点文件：包括HTML、CSS、图片等。
| 实际使用中用两个目录分别存放，记得修改`pelicanconf.py`中的输出目录。

| ReStructedText文档和教程：
| https://docutils.sourceforge.io/rst.html
| https://docutils.sourceforge.io/docs/user/rst/quickref.html

| `pelican -r`: 监视内容，即时用pelican生成静态站点文件。

| 用Python启动服务器来调试（Pelican --listen不知道咋回事，有问题）：
| `python -m http.server --help`