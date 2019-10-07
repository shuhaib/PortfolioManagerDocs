# PortfolioManagerDocs
## Deployment
### Angular
Directory to hold documents detailing the build and deployment process of Angular app in local Tomcat server.

Usually the app is tested using **ng serve** and everything seems to work perfectly. But when we try to build the app for deploying it in Tomcat or Github pages, the app fails.
This is because the app is in its comfort zone when we are using ng serve, because it gets everything it wants.
But we should build the app using ng build command and deploy it in any of our target servers to ensure that the feature we added or modified is working fine.
This tool automates the entire process of building and deployment of the Angular app to a Tomcat server. 
From now on, before each push to the repositories make sure the app is running perfectly in Tomcat.

For this tool to work any of the Tomcat versions should be intalled and the corresponding path should be mentioned in **Build.properties** file. Also correct the Angular root path and project name properties.
If you feel there are some issues, please feel free to add the below line as the last command in **BuildAndDeployAngular.bat** file and share the error you get is command prompt.
>**pause**

How to run?
If everything is set well, please run the below bat file:
>**BuildAndDeployAngular.bat**

Detailed steps:
>Step 1  : Istall Tomcat  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Go to the below link and download core zip  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;https://tomcat.apache.org/download-90.cgi  
>Step 2  : Unzip the contents to your desired location  
>Step 3  : Edit the tomcat-users.xml in conf folder  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add the below under <tomcat-users> tag  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<role rolename="manager-gui"/>`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<role rolename="manager-script"/>`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<role rolename="manager-jmx"/>`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<role rolename="manager-status"/>`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<user username="arun" password="arun" roles="manager-gui, manager-script, manager-jmx, manager-status"/>`  
>Step 4  : Copy the below files to a folder  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Build.properties  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. BuildAndDeployAngular.bat  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. BuildAngular.bat  
>Step 5  : Edit Build.properties, the following should be corrected  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. TOM_CAT_ROOT  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. TOM_CAT_PORT, if default(8080) no need to edit, leave it as it is  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. ANGULAR_ROOT  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. ANGULAR_PROJECT_NAME  
>Step 6  : Run BuildAndDeployAngular.bat  
>Step 7  : Check the server is up using the below link  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`localhost:<default>` in my case it is `localhost:8080`  
>Step 8  : Click the Manager App button  
>Step 9  : Enter configured username and passedword in Step 3  
>Step 10 : You will see deployed projects and their status, in my case the project name is 'portfolio-management' and running status is 'true'  
>Step 11 : Click on the project name  
>Step 12 : Check everything is working fine  