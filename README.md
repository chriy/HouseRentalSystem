# HouseRentalSystem (房屋租赁管理系统)


-  基于layui+SSM写的毕业设计,系统界面仿Q房网UI进行排版。后台管理界面使用的layui自带后台管理样式。后端语言使用的目前主流的Spring+SpringMvc+Mybatis框架。实现了一系列基本的增删改查和权限控制功能。

---

- 由于一直在公司上班，没来得及更新这个项目。这个项目属于我的毕业设计，写的很匆忙。在整个系统的设计和代码编写过程中，可能没有完全遵循规范。也因此没有上传sql文件，因为结构比较简单。我相信如果有需要的，他一定能看懂我的数据库。近期我会着手这个系统的二次开发，整套系统推翻重做，将会利用所有能用到的新技术，也算是我个人的学习总结。如果有写的不正确的地方，欢迎指正，我会虚心学习。



#### !!! 为了帮助一部分才开始学习接触的人，我还是把sql文件传上来了。需要的自取，如果觉得对你有帮助，可以关注我之后重构的项目。目前还在制作中，我会尽快开源





# 部署注意事项：

 1. 简介图片是通过异步请求的方式进行上传的。需要注意接口是否正确。

 2. 其余详情图片是通过提交表单的方式进行提交的。

 3. 文件的上传需要配置虚拟路径。这是图片的存储目录。

    ```java
    private String dirPath = "D:/upload/";
    // 简介图片地址
    private String simplePath = "";
    // 详细图片地址
    private StringBuilder detailsPath = new StringBuilder();
    ```

4. 还有就是需要去tomcat容器中配置虚拟路径映射

   ```xml
   <Host appBase="webapps" autoDeploy="true" name="localhost" unpackWARs="true">
   	<!--tomcat conf目录下，修改server.xml-->
       <!--在 Host标签中添加路径映射-->
         <Context docBase="D:/upload/" path="/HouseRentalSystem/file"/>
   </Host>
   ```

   

---

#### 功能设计：

1. 房屋信息展示
2. 房屋详情页面展示
3. 用户登录注册
4. 用户发布房源信息
5. 用户管理自己发布的所有房源信息
6. 修改密码
7. 管理员登录
8. 管理员发布房源信息
9. 管理员管理所有用户信息

---





## 以下为部分功能截图

- 首页
![image](/WebContent/img/des01.png)
---
- 租房信息详情
![image](/WebContent/img/des02.png)
---
- 个人用户后台
![image](/WebContent/img/des03.png)
![image](/WebContent/img/des04.png)

---
- 管理员后台
![image](/WebContent/img/des05.png)
![image](/WebContent/img/des06.png)