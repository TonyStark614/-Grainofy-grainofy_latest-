Grainofy
Task Force - Tanish Gupta, Bhavya Narang, Anushree Krishania, Pranav Kshirsagar, Hritik Minhas and Siddharth Sharma.
App Installation – Available for free and can be downloaded from the playstore for android users and from app store for iOS users.
Project Description – Grain management software (GrainStock) 
Expected Impact – We aim to remove any grievances faced by the users or barn house owners, connect the government to the users directly through the software and remove any possibility of corruption and loss of information. It will also help us in controlling the number of suicides which happen due to loss of crop, lack of money to pay back agricultural loans and starvation.
Project purpose and scope - 
What we are doing at Grainofy-
Our idea basically revolves around the management of grains. We aim to provide a software to the customers which helps them in various fields like storing and distribution of food grain, connecting the various barn house owners so that they can be dependent on each other, through the software barn house owners will be in direct contact with the government and a loan facility for a customer who will require support in case of emergencies. This will help in creating a reliable system for the sale of food grains at a fair price, managing the national buffer stock to tide over emergencies and removing any sign of corruption by creating a fully transparent system.
Options offered or functions and subroutines –
Sign in page – Multiple users will be able to access their personal data regarding available grain stocks, information from the government, information regarding any incoming and outgoing stock and helpline facility.
Dashboard – Each user will have his own dashboard as per his needs and will consist of a sidebar with multiple accessible options like management, grains, market, reports, About us, FAQ and Help.
Dashboard Sidebar – 
Management- Through this option user will be able to keep a tab on his workers working under him and in direct contact with them.
Grains – This will help the user to keep check on his incoming and outgoing grains. All information regarding the storage date, present quantity and expiry date of each individual batch.
Market – Information regarding the present rates of multiple grains at the moment, any important points suggested by the government for the betterment of value of grains.
Reports – Provides a detailed analysis for the users depending upon the information provided by them.
About us – Contains information of what type of software has been built and what we aim to provide to the community.
FAQ – This section will consist of various questions which can occur to any user or barn house owner.
Help – We aim to provide a support system for our users where they can contact our support team and state their problems related to grains, market or suggestions.

Technical Challenges or issues – 

Compilation of multiple features into the application due to the variation in styles of the coding for each member.
Integrating the login/signup from firebase.

Database accessed during the programs operation - 
Firebase was the database accessed during the program's operation. We used firebase because the exchange of data to and fro from the database is easy and quick and it also offers features like managing all data real time in the database and syncing the real time data across all devices. 




Describing the program's individual modules and libraries-
main.dart : 
         MyApp()  ---> AnimatedSplashScreen() ---> authLogin()
authlogin.dart :
         authLogin() ---> RootPage()/SignUpScreen()/MyHomePage()/ForgetPasswordScreen()/LoginScreen()
  IF THE USER GETS LOGGED IN
Sidebarplusmain.dart : 
Contains the code of the sidebar(app drawer) along with the home screen.
Stack-->Column-->AnimatedPosition : For the sidebar/app drawer
DetailsScreen : Contains the details of the onTap of the shopping icon button on the home page. 

WHEN THE APP DRAWER IS OPENED

Manage2.dart
When the Management button is pressed, ManagePage class is reached out that contains the code of the management page.

marketplace.dart
When the Market button is pressed, it reaches out to the Mkt1Home.
myCardDetails : Contains all the details of cards
myCurrencies : Contains the details of the graph plotting
myLeadingDetails : Image details
myGraphDetails : Graph code
myCurrenciesDetails : Currency symbol data

Graphcallingpage.dart
When the Report button is pressed, it reaches out to the GraphCallingPage().
Then the GraphCodeFile()
  
AboutUs.dart
When the About Us button is pressed, it reaches out to the AboutUs().

faqs.dart
When the Faqs button is pressed, it reaches out to the Faqs().

help.dart
When the Help button is pressed, it reaches out to the HelpPage().
Calls out FlutterShareMe() 

main1forsub.dart
When the Subcription button is pressed, it reaches out to the subpage().
subpage() ---> HomeScreen()  

      11.  whatsappbutton.dart
External page for button reference 
      12. test2.dart
 For Whatsapp sharing link
      13. signuppage.dart
 Contains the code for firebase signup page
      14. myflexiableappbar.dart
 Contains the code for app bar of the market page
      15. myappbar.dart
 Contains the code for details to be entered on the app bar
      16. constant.dart
 Contains the code for external fonts imported
      17. constant1.dart
 Contains the code for external fonts imported
      18. constant2.dart
 Contains the code for external fonts imported
      19. forgetPasswordScreen.dart
 Contains the code to reset password from firebase
      20. auth_services.dart
 Contains the code of authentication of the firebase login
      21. rootPage.dart
 Contains the code of authentication of the firebase login
    

