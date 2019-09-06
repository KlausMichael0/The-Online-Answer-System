### 项目介绍

- 本项目为在线答疑平台——The on-line Answer System Based on Web
- 针对实现学生与教师在线上平台解惑释疑

### 部署项目

- python版本——3.7.3
- 项目所需的所有环境都在`requirements.txt`中
  - 在`requirements.txt`文件夹下执行以下命令以部署所需的环境
    - `pip install -r requirements.txt`
- 使用`pycharm`打开`OAS`文件夹
  - 在`OAS`文件夹中设置`setting.py`
    - 自行修改数据库的`NAME`、`USER`、`PASSWORD`、`PORT`
- 在项目的文件夹下面（含有`manager.py`），打开命令行输入
  - `python manage.py migrate`
    - 如果报错`No module named 'xxx'`
      - 需要用pip命令安装对应的模块
      - `pip install django-xxx`
    - 如果报错`Unknown database 'xxx'`，这里的`xxx`就是上述`setting.py`中自己定义的库名
      - 当缺少对应的数据库时，则报数据库错误
      - 进入mysql命令行
        - `mysql -u root -p`，输入密码
        - `create database xxx character set utf8`，创建对应的数据库并设置编码格式为`utf-8`
    - 再次执行迁移命令
      - `python manage.py migrate` 
      - 迁移成功
- 打开pycharm，运行
  - `file->setting->project`，在`project interpreter`中选择python版本并点击ok即可
- 新项目导入好后，所有数据是没有的，本地我们需要创建admin
  - `python manage.py createsuperuser`
  - 在pycharm右上角运行项目，进入`http://127.0.0.1:8000/admin/admin`，即可进入管理项目
