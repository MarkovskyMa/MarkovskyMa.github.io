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
| 用Python启动服务器来调试（pelican --listen不知道咋回事，有问题）：
| `python -m http.server --help`

| 直接进入Pelican的项目文件夹，因为配置文件中已经写了output文件夹的路径，所以直接用：`pelican -l -r` 一边监听和输出静态站点文件，另一边启动服务器。

| Pelican的生成静态站点的工具就是Jinja2（还是Jinja？）。这个Jinja就是一个模板生成工具，来自Flask后端框架，用来生成HTML的，但是本身也是一个独立的库，所以可以被用来做各种文本的处理和模板的生成，特别是生成HTML、JSON之类的标记语言。

| 应该写一个脚本能够自动打包所有的改动提交和推送到GitHub上，不用每次都手动操作了。
| Python有gitpython库用来操作Git，但是也需要安装git，所以还不如直接写一个PowerShell或Bash脚本来操作Git。
| 或者，VSCode，以及其他编辑器的Git扩展就解决了……所以是不是伪需求？

| 怎么添加一个个人主页？Pelican的设置中似乎有author url的选项？
| 在文章的标签中写上邮箱就好了，或者通过metadata来统一设置？
| 解决了，就是配置文件pelicanconf.py中的social部分，下载前一部分就行，元组第二部分保留井号。

