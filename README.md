# BookStore

建立一個Dockerize ASP.NET Core MVC + MySQL 網站


1 ASP.NET Core MVC Series
==================================<br />
https://code-maze.com/asp-net-core-mvc-series/

1.1 Get started with ASP.NET Core MVC project
--------------------------------------------------------
https://code-maze.com/getting-started-with-asp-net-core-mvc/

1.2 Working with Data
------------------------
https://code-maze.com/working-with-data-in-asp-net-core-mvc/

2 Migaration to Mysql
===============================
https://medium.com/@stas_khavruk/how-to-properly-use-ef-core-in-asp-net-core-with-mysql-database-a75f56c97318

2.1 run commad two times, Remove-Migration<br />
2.2 How to properly use EF Core in ASP.NET Core with MySql Database<br />
   2.1 NuGet install Pomelo.EntityFrameworkCore.MySql<br />
   2.2 Modify the Model file for Mysql datatype<br />
   2.3 Follow the article<br />

3 Adding MySQL to ASP.NET Core App With Docker Compose
============================================================<br />
https://code-maze.com/mysql-aspnetcore-docker-compose/<br />

3.1請先在docker-compose.yml加入mysql部分,測完再加入Asp.NET Core部分<br />
3.2[解決發生異常]InnoDB: Table flags are 0 in the data dictionary but the flags in file ./ibdata1 are 0x4800!<br />
	https://www.jianshu.com/p/7af95b08b954<br />
3.3 init.sql -> 去除所有CHARACTER SET , 並且要附於檔案的Read/Write權限<br />
3.4 [注意]<br />
docker-compose.yml<br />
     會自建私有網路, 利用Service Name指定Container的DNS name<br />
     不要設定用/var/lib/mysql目錄 -> 這會跟Mysql 8.0沖到<br />
     不要用Port將Mysql Container的Port導出來,這樣Asp.NET Core無法透過Connect<br />
     Volumes ->  Hosts path = /var/lib/docker/volumes<br />

docker-compose up --build
