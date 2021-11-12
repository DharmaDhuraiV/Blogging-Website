# blog_website
<h3>Outline</h3>
A project that represents Online Blogging Website for Software Package Development.
This system is similar to the other blogging websites that spread the information and knowledge about the topics that are interesting to the readers.
The website uses the html,css,bootstap and handlebar tools for front end part and odejs, express and hiroku database for back end part.
It includes features like create/edit/delete the blogs, view follow count and blog history for the bloggers.
For the users, they have the ability to view/like/comment a blog, follow the blogger and see their day to day tracking.

<h3>Demo video Link</h3>
https://drive.google.com/file/d/1gnfo6YJ4Te-uRLyl3A80XrffJ5NuBkt9/view

<h3>File Organization</h3>

&emsp;root<br>
&emsp;│&emsp;.gitignore - git related file<br>
&emsp;│&emsp;package-lock.json - created for node modules node modeules<br>
&emsp;│&emsp;package.json - describes the node app and its dependencies<br>
&emsp;│&emsp;Procfile - specifies the configuration for deploying the node app on heroku<br>
&emsp;│&emsp;README.md<br>
&emsp;│&emsp;server.js - the main file containing the routes<br>
&emsp;│<br>
&emsp;│───db - folder containing database, analytics and authentication related functions<br>
&emsp;│&emsp;&emsp;analytics.js - funtions for returing data(based on similarity)<br>
&emsp;│&emsp;&emsp;auth.js - funtions for authenticating routes<br> 
&emsp;│&emsp;&emsp;database.js - funtions to retrive data from heroku postgres database<br>
&emsp;│&emsp;&emsp;DBConnect.js - funtions to connect to database<br>
&emsp;│<br>
&emsp;│───public - contains all the static files<br>
&emsp;│&emsp;&emsp;├───css<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;bootstrap.min.css<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;bootstrap.min.css.map<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;loginstyle.css<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;signup.css<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;styles.css<br>
&emsp;│&emsp;&emsp;│<br>
&emsp;│&emsp;&emsp;├───icons<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;bg.jpg<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;check-mark.svg<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;check.png<br>
&emsp;│&emsp;&emsp;│&emsp;&emsp;user.png<br>
&emsp;│&emsp;&emsp;│<br>
&emsp;│&emsp;&emsp;└───scripts<br>
&emsp;│&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bootstrap.min.js<br>
&emsp;│&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bootstrap.min.js.map<br>
&emsp;│&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;categories_toggle.js<br>
&emsp;│&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;loading.js<br>
&emsp;│&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;signup.js<br>
&emsp;│&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;userpage.js<br>
&emsp;│<br>
&emsp;├───routes - additional routes<br>
&emsp;│&emsp;&emsp;databaseAPI.js - functions for creating a record in database<br>
&emsp;│&emsp;&emsp;likeCommentAPI.js - functions to create a record in bloglikes table<br>
&emsp;│&emsp;&emsp;trackingAPI.js - functions to create a record in tracking table<br>
&emsp;│<br>
&emsp;└───views - contains all the frontend pages<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;create_blog.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;editBlog.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;loading.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;login.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;mainpage.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;signup.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;suggestion_page.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;userpage.handlebars<br>
&emsp;&emsp;&emsp;│&emsp;&emsp;viewBlog.handlebars<br>
&emsp;&emsp;&emsp;│<br>
&emsp;&emsp;&emsp;└───layouts<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;main.handlebars<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;no_nav_main.handlebars<br>
