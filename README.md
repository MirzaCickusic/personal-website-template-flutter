# web_site

With this project you could setup your own personal website (something like this - https://mirzacickusic.com/) in short time for FREE (if you allready have domain you want to use for this website)

## Getting Started

This project is a starting point for a Flutter application. (IF THIS IS YOUR FIRST FLUTTER PROJECT THEN I SUGEST TO DIVE IN TO CONTENT BELOW) 

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### How To Setup Guide
 
1. Download this repo to your local machine (considering you allready have Flutter runing on your machine, if not then check "Getting started" part) 
2. Open the project in IDE of choise
3. Run the project on Chrome emulator and you will see your next web site. There is some things we need to change to make this website more personal to you
4. Open constants folder inside lib folder. There you will find everything you need to change and could change to your likings
5. Edit content of constants folder and check the changes in emulator that you made
6. I suggest adding Favicon to look more profesional. To do this check the content of web folder. Take a look on .png images that are allready there. You will need to create your own images in the same resolution like them. Once you created them just change old images with new one. Names of images should stay the same
7. Run flutter build web from root directory of this project
8. Once flutter build web is complited. You would have build folder created. To have your images succesfuly represented on you site you would need to check this build folder content. Expecialy build/web/assets. If there are no images folder, copy your images from project/assets folder to project/build/web/assets folder.
9. Now you need to deploy your website to hosting. For this we use Firebase hosting. To do this i suggest to follow this tutorial (https://www.youtube.com/watch?v=CAYa9AQGtdU)
10. Once you succesfuly deployed, opened your website on link firestore hosting provided and check everything looks OK. Its time to connect your custom domain. If you dont have one I suggest (namecheap.com). For connecting your custom domain i suggest this tutorial (https://www.youtube.com/watch?v=x5XlzSIWsvI).

VOULA! You did it.

Ps:
for every change you made on website code. To update it in real time just run flutter build web and then firebase doploy
