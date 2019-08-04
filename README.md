# README #

Robot Framework automation example using http://www.automationpractice.com (Shown below)

![AutomationPractice.com](http://tinyimg.io/i/TL2x0eg.png)

### Who is this repository for? ###

Newcomers to Robot Framework interested in automated web testing, looking for examples

### What is Robot Framework? ###

Robot framework is a python based, open source test automation framework with great extensibility. Robot framework is cross platform and will run on Mac, Linux and Windows. 

See [here ](https://robotframework.org/)for Robot Framework home page


### What exactly is this? ###

A basic Robot Framework Project covering the following:

* Automating the purchase of an item from automationpractice.com including signing up for an account

* Calculating that the prices including shipping are correct

* Use of custom python keywords to generate random emails, generate random names 

* Basic scripting to perform some mathematics

* Test Objects required to perform the test cases

* Far from perfect - was created quick and dirty


### How do I get set up? ###

* Install [Python 3](https://python.org/)
* Download [Selenium Web Driver](https://seleniumhq.org/) for your browser of choice (be sure to get the correct version matching your browsers version)
* Add WebDriver executable to your systems PATH environment variable 
* Clone or download this repository
* Using command line navigate in to the project folder and execute the command ```pip install -r requirements``` this will install robot framework, robot framework selenium library and the names python package also required for custom keywords

Once everything has been installed you can run the test suite from the command line in the projects folder with the command```robot .\automationpractice.robot``` 

By default it will try and run using Google Chrome, this can be changed at the command line by running ```robot -v BROWSER:edge .\automationpractice.robot``` to run with Microsoft Edge for example, or can be changed in the variables.robot file



### Want to Contribute? ###

Please critic and or suggest improvements, branch off & add more test cases


###Improvements to consider###

How to make the scripts run faster?

How to make the code cleaner?

Are there better approaches to obtain the same results?

More?


### Who do I talk to? ###

* Anthony O`Donnell - [LinkedIn](https://www.linkedin.com/in/anthonyodonnell)
