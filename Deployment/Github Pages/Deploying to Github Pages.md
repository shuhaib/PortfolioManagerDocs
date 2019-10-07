# Deploying an Angular App to Github Pages
-----------------------------------------

Github pages is a Github feature that allows you to host a static website or web app for free, and it’s as simple as putting the files in a gh-pages branch of your project’s repository. 
The Angular CLI, along with a node package called angular-cli-ghpages make it even easier to deploy to Github pages.

## First install the angular-cli-ghpages globally:
>**$ npm install -g angular-cli-ghpages**

## Now use the Angular CLI with the --base-href flag to build your project and set the correct base href location:
>**$ ng build --prod --base-href "https://arunkumarsa7.github.io/PortfolioManagerClient/"**

## Then it’s as simple as running angular-cli-ghpages. You can use the nghshorthand:
>**$ ngh**
>**$ ngh --dir /dist/portfolio-management/**

And done! Your app will now be hosted at https://arunkumarsa7.github.io/PortfolioManagerClient/

## You can optionally add a message to the commit when deploying:
>**$ ngh --message="First deploy"**

## You can also specify which branch to deploy:
>**$ ngh --branch=production**

## And finally, you can always do a dry run before actually deploying to see the output:
>**$ ngh --dry-run**