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
>Step 1  : Istall Tomcat\s\s
		   Go to the below link and download core zip\s\s
		   https://tomcat.apache.org/download-90.cgi\s\s
>Step 2  : Unzip the contents to your desired location\s\s
>Step 3  : Edit the tomcat-users.xml in conf folder\s\s
		   Add the below under <tomcat-users> tag\s\s
			<role rolename="manager-gui"/>\s\s
			<role rolename="manager-script"/>\s\s
			<role rolename="manager-jmx"/>\s\s
			<role rolename="manager-status"/>\s\s
			<user username="arun" password="arun" roles="manager-gui, manager-script, manager-jmx, manager-status"/>\s\s
>Step 4  : Copy the below files to a folder\s\s
			1. Build.properties\s\s
			2. BuildAndDeployAngular.bat\s\s
			3. BuildAngular.bat\s\s
>Step 5  : Edit Build.properties, the following should be corrected\s\s
			1. TOM_CAT_ROOT\s\s
			2. TOM_CAT_PORT, if default(8080) no need to edit, leave it as it is\s\s
			3. ANGULAR_ROOT\s\s
			4. ANGULAR_PROJECT_NAME\s\s
>Step 6  : Run BuildAndDeployAngular.bat\s\s
>Step 7  : Check the server is up using the below link\s\s
		   localhost:<default> in my case it is localhost:8080\s\s
>Step 8  : Click the Manager App button\s\s
>Step 9  : Enter configured username and passedword in Step 3\s\s
>Step 10 : You will see deployed projects and their status, in my case the project name is 'portfolio-management' and running status is 'true'\s\s
>Step 11 : Click on the project name\s\s
>Step 12 : Check everything is working fine\s\s