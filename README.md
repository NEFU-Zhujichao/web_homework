# WEB课设
该项目基于ssm框架编写的，项目使用的是编写配置文件的方式构建的基础框架。
### 静态资源过滤问题
- 项目需要动态的路径，"/"：当前的服务器
### 项目部署
部署war项目，将war包扔在webapps目录，并且修改配置文件。
```xml
<Context path="/" docBase="web_homework-1.0-SNAPSHOT"
reloadable="true" />
```