# PortfolioManagerDocs
## Deployment
### Angular
Directory to hold documents detailing the build and deployment process of Angular app in local Tomcat server.

Usually the app is tested using **ng serve** and everything seems to work perfectly. But when we try to build the app for deploying it in Tomcat or Github pages the app fails.
This is because the app is in its comfort zone when we are using ng serve since it gets everything it wants.
But we should build the app using ng build command and deploy it in any of our target servers to ensure that the feature we added or modified is working fine.
This tool automates the entire process of building and deployment of the Angular app to a Tomcat server. 
From now on, before each push to the repositories make sure the app is running perfectly in Tomcat.

For this tool to work any version of Tomcat should be intalled and the corresponding path should be mentioned in **Build.properties** file. Also correct the Angular root path and project name properties.
If you feel there are some issues, please feel free to add the below line as the last command in **BuildAndDeployAngular.bat** file and share the error you get is command prompt.
>**pause**

How to run?
If everything set well, please run the below bat file:
>**BuildAndDeployAngular.bat**
