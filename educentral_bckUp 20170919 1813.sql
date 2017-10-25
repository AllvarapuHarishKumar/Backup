-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.18-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema educentral
--

CREATE DATABASE IF NOT EXISTS educentral;
USE educentral;

--
-- Definition of table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `guestId` int(10) unsigned NOT NULL,
  `guestName` varchar(45) NOT NULL,
  `guestMail` varchar(45) NOT NULL,
  `guestMessage` varchar(1000) NOT NULL,
  PRIMARY KEY (`guestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;


--
-- Definition of table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseName` varchar(300) NOT NULL,
  `courseDuration` varchar(45) NOT NULL,
  `courseType` varchar(45) NOT NULL,
  `courseCost` int(11) NOT NULL,
  `courseContent` mediumtext NOT NULL,
  `courseCapacity` int(11) NOT NULL,
  `providerId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL,
  `courseRatings` int(5) unsigned DEFAULT NULL,
  `imgURL` varchar(45) DEFAULT NULL,
  `preRequisites` varchar(300) DEFAULT NULL,
  `extraData` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`courseId`,`courseName`,`courseDuration`,`courseType`,`courseCost`,`courseContent`,`courseCapacity`,`providerId`,`tagId`,`courseRatings`,`imgURL`,`preRequisites`,`extraData`) VALUES 
 (1,'Angular: Getting Started','5h 40m','Beginner',3000,'Whether you are new to Angular or new to Angular, if you want to create great web apps and stay up to date on the latest app development technologies, you\'re going to want to come up to speed quickly with Angular\'s components, templates, and services. This course provides the basics you need to get started building an Angular application. First, you\'ll learn how to set up your environment, learning about components, templates, and data binding and how they work together. Next, you\'ll discover how to build clean components with strongly-typed code, as well as building nested components and how to use dependency injection to inject the services you build. Finally, you\'ll cover how to retrieve data using HTTP, navigation and routing, and you\'ll revisit the Angular setup process. By the end of this course, you\'ll be up to date on all the latest Angular knowledge and you\'ll be able to use Angular to create great apps in the future.',32,1,4,5,NULL,NULL,NULL),
 (2,'Python: Getting Started','2h 59m','Beginner',2590,'Whether you are new to Angular or new to Angular, if you want to create great web apps and stay up to date on the latest app development technologies, you\'re going to want to come up to speed quickly with Angular\'s components, templates, and services. This course provides the basics you need to get started building an Angular application. First, you\'ll learn how to set up your environment, learning about components, templates, and data binding and how they work together. Next, you\'ll discover how to build clean components with strongly-typed code, as well as building nested components and how to use dependency injection to inject the services you build. Finally, you\'ll cover how to retrieve data using HTTP, navigation and routing, and you\'ll revisit the Angular setup process. By the end of this course, you\'ll be up to date on all the latest Angular knowledge and you\'ll be able to use Angular to create great apps in the future.',60,2,24,3,NULL,NULL,NULL),
 (3,'iOS and android Auto Layout: Adaptive UIs for All Devices','5h 50m','Intermediate',5500,'Whether you are new to Angular or new to Angular, if you want to create great web apps and stay up to date on the latest app development technologies, you\'re going to want to come up to speed quickly with Angular\'s components, templates, and services. This course provides the basics you need to get started building an Angular application. First, you\'ll learn how to set up your environment, learning about components, templates, and data binding and how they work together. Next, you\'ll discover how to build clean components with strongly-typed code, as well as building nested components and how to use dependency injection to inject the services you build. Finally, you\'ll cover how to retrieve data using HTTP, navigation and routing, and you\'ll revisit the Angular setup process. By the end of this course, you\'ll be up to date on all the latest Angular knowledge and you\'ll be able to use Angular to create great apps in the future.',40,1,5,4,NULL,NULL,NULL),
 (4,'Angular: First Look','4h 31m','Intermediate',4310,'This course is a gentle introduction to the changes that Angular 2 brings, how they compare to Angular 1, and provides an understanding of the architecture and how the core concepts work together to build applications. You will learn how your Angular 1 skills translate and prepare you to build Angular 2 applications. Code samples focus on specific features including Angular 2 components, templates directives, data binding syntax, modules, dependency injection, routing, Http, pipes, and services. All samples are written in TypeScript and run live on the web where you can see and edit them with a click of a button; no setup required.',60,4,4,1,NULL,NULL,NULL),
 (5,'Become a Full-stack .NET Developer','2h 30m','Intermediate',2300,'Whether you\'re a junior developer and want to learn a systematic approach to build applications, or you\'re more experienced and want to strengthen your front-end and/or back-end development skills, this course is for you. In this hands-on course, Become a Full-stack .NET Developer, you will be part of building a real-world mini social network. You will learn how to start with a plain requirements document, break it down into tasks, and build the entire application end-to-end in an agile way. Youâ€™ll make design decisions along the way, refactor code and build a clean decoupled and testable architecture. You\'ll learn all kinds of tools and techniques involving ASP.NET MVC, Web API, Entity Framework Code First, Bootstrap3, HTML5, CSS3, refactoring, clean coding, clean architecture and dependency injection: in other words, the tools and techniques needed by every full-stack .NET developer. By the end of this course, you\'ll have the knowledge and skills necessary to take you one step closer to being a full-stack .NET developer.',70,4,8,2,NULL,NULL,NULL),
 (6,'Angular Fundamentals','1h 30m','Beginner',1300,'Angular has become one of the most widely used web development frameworks. Angular 2 marked a significant change in the way we write applications with Angular. This course, Angular Fundamentals, will teach you the fundamentals of writing applications with Angular 2 - whether or not you\'ve had past experience with with Angular 1. You will learn how to bootstrap an application and how to build pages and reusable elements using Angular Components and the new Angular syntax. You\'ll also learn the fundamentals of: routing, creating reusable services and dependency injection, building forms with validation, and communicating with the server using HTTP and observables. You\'ll even learn how to test all of this using unit tests and end-to-end UI tests. When you finish this course, you will have the fundamental knowledge necessary to create professional and personal websites using Angular.',60,5,4,1,NULL,NULL,NULL),
 (7,'Building Your First API with ASP.NET Core','2h 00m','Beginner',2000,'Both ASP.NET Core and Entity Framework Core have been built from the ground up, and a lot has changed. ASP.NET Core isn\'t an upgrade to ASP.NET, it\'s a new framework altogether. In this course, Building Your First API with ASP.NET Core, you\'ll learn about the important concepts of ASP.NET Core related to building an API, like working with middleware, MVC, services, and Dependency Injection. First, you\'ll start out with the basics to ASP.NET Core including how such a project is structured. Next, you\'ll explore how to implement all the functionality you\'d expect from an API. Finally, you\'ll discover how to create a database using a code-first approach and how to work with migrations. After this course, you\'ll have a good understanding of what ASP.NET Core is and how to build an API with it.',100,1,8,1,NULL,NULL,NULL),
 (8,'All Things Text in After Effects','3h 30m','Intermediate',3300,'In this series of tutorials, we\'ll learn about creating, controlling, and using text in After Effects. We start out by learning about the two different type tools and follow that up by navigating the Character and Paragraph panels. There are a few controls within these panels that even the most seasoned After Effects user may have never used before. After we\'ve covered the basics, we move down to the properties on the text layers. There are a few options that are totally unique to text layers as well as a few additions in the context menus that will speed up your workflow. For instance, we learn how to edit a Photoshop text layer right inside of After Effects, complete with translated layer styles. We also go over a few techniques for overcoming readability issues and some tips for creative ways to fix common problems. We learn how to preview animation presets, and finish by learning per-character animation with both Classic 3D and Ray-traced 3D. This tutorial is full of all the possibilities for your text in After Effects. It\'s perfect for a beginner just starting out learning the type tools or for someone more seasoned looking to increase their knowledge about all things text in After Effects. Software required: After Effects CC 12.2.1.5.',70,4,25,3,NULL,NULL,NULL),
 (9,'Advanced Node.js','3h 30m','Intermediate',3300,'Learn how to answer most of the questions an experienced Node developer is expected to answer. In this course, Advanced Node.js, you\'ll learn the core Node.js concepts and API modules from simple utility modules all the way to streams and clusters. First, you\'ll discover Node\'s architecture and dependencies and how the require module and it\'s 5 major steps. Next, you\'ll explore the event-loop and it concurrency model and also about event emitters, callbacks, and promises. Then, you\'ll be working with TCP, UDP, HTTP, HTTPS, os, fs, console, and util. Finally, you\'ll learn about readable, writable, and transform streams and will also learn how to use the child process module and load balancing with the cluster module. By the end of this course, you should be comfortable understanding advanced code written in Node, and writing efficient and scalable node modules and packages',70,5,4,5,NULL,NULL,NULL),
 (10,'C# 6 from Scratch','4h 30m','Intermediate',4300,'In this course, C# 6 from Scratch, you will be introduced to the basics of C# 6, the latest version of one of the most popular programming languages on the planet, and work your way up through intermediate and advanced topics. Along the way you\'ll learn a good bit about best practices and how to create solid C# programs. Some of the major topics that you will cover include, basic programming constructs, classes and objects, events, LINQ, and much more. By the end of this course, you will have a solid foundation in all of C# and be ready to go on to more advanced topics. You need no prior programming experience for this course, and can use free software from Microsoft to follow along.',70,4,16,1,NULL,NULL,NULL),
 (11,'AWS Certified Solutions Architect - Associate','2h 2m','Intermediate',2200,'AWS is the most popular and most widely used cloud platform in the world. This course, AWS Certified Solutions Architect - Associate, is designed to prepare administrators, engineers, architects, and consultants for designing workload deployments on the Amazon Web Services platform. This course will teach you design principles, including strategies for networking, storage, DNS, DBaaS, monitoring, load balancing and much more. When you\'re finished with this course, you\'ll have the skills and knowledge needed to securely design highly available and scalable systems, and you\'ll also be highly prepared for the AWS Certified Solutions Architect - Associate certification exam. The course covers all the areas and objectives listed in the exam blueprint and goes above and beyond with real world, hands-on instructions.',70,7,11,3,NULL,'Viewers should have familiarity with the content required to pass the AWS Certified SysOps Administrator Associate or the AWS Certified Developer Associate exam. Viewers will need to hold one of these prerequisite certifications before attempting the AWS Certified DevOps Engineer Professional exam.','Implementing and managing continuous delivery systems and methodologies on AWS 7.\r\nUnderstanding, implementing, and automating security controls, governance processes, and compliance validation.\r\nDefining and deploying monitoring, metrics, and logging systems on AWS.\r\nImplementing systems that are highly available, scalable, and self-healing on the AWS platform.\r\nDesigning, managing, and maintaining tools to automate operational processes.'),
 (12,'Spring Fundamentals','2h 00m','Beginner',2000,'This course covers all of the fundamentals of Spring. It covers Java Configuration, XML Configuration, Annotation based Configuration, Beans and their Scopes, and Properties.',100,4,1,3,NULL,NULL,NULL),
 (13,'Python Fundamentals','2h 00m','Beginner',2000,'Python Fundamentals gets you started with Python, a dynamic language popular for web development, big data, science, and scripting. What’s so great about Python? Python is powerful. The Python language is expressive and productive, it comes with a great standard library, and it’s the center of a huge universe of wonderful third-party libraries. With Python you can build everything from simple scripts to complex applications, you can do it quickly, and you can do it with fewer lines of code than you might think possible. But for many people those reasons take back-seat to something more important: Python is fun! Python’s readable style, quick edit-and-run development cycle, and “batteries included” philosophy mean that you can sit down and enjoy writing code rather than fighting compilers and thorny syntax. As your experiments become prototypes and your prototypes become products, Python makes the experience of writing software not just easier but truly enjoyable. In the words of Randall Munroe, \"Come join us! Programming is fun again!\"',100,1,24,4,NULL,NULL,NULL),
 (14,'Python Fundamentals','2h 00m','Beginner',2000,'Python Fundamentals gets you started with Python, a dynamic language popular for web development, big data, science, and scripting. What’s so great about Python? Python is powerful. The Python language is expressive and productive, it comes with a great standard library, and it’s the center of a huge universe of wonderful third-party libraries. With Python you can build everything from simple scripts to complex applications, you can do it quickly, and you can do it with fewer lines of code than you might think possible. But for many people those reasons take back-seat to something more important: Python is fun! Python’s readable style, quick edit-and-run development cycle, and batteries included philosophy mean that you can sit down and enjoy writing code rather than fighting compilers and thorny syntax. As your experiments become prototypes and your prototypes become products, Python makes the experience of writing software not just easier but truly enjoyable. In the words of Randall Munroe, - Come join us! Programming is fun again!',100,4,24,3,NULL,NULL,NULL),
 (15,'Fundamentals of Cloud Computing','4h 00m','Intermediate',4000,'Talk about Cloud Computing has spread like a marketing virus. But what is cloud computing, really? How does it work? How can it help IT professionals and businesses of all sizes? In this course, Fundamentals of Cloud Computing, youlll learn the different forms of cloud computing, how they can help you, what makes them so powerful. You\'ll see numerous hands-on demos of cloud computing solutions including infrastructure as a service and software as a service solutions. Finally, you\'ll learn how to secure your cloud and protect your data in the cloud. When you\'re done with this course you\'ll have the skills and knowledge that you need to understand and use cloud computing.',70,2,19,1,NULL,NULL,NULL),
 (16,'AngularJS Fundamentals','3h 30m','Beginner',3300,'In this course, you will learn how simple it is to use Angular to create maintainable and testable single page applications. You will learn how to: bootstrap your Angular application; use AngularJS markup and expressions; create and use controllers; use built-in services and create custom services; turn your application into a SPA using routing; and create your own custom elements and handle events using directives. You will also learn how AngularJS allows you to do all thing using test-driven-development.',100,6,4,2,NULL,NULL,NULL),
 (17,'RESTful Web Services with Node.js and Express','2h 50m','Intermediate',2500,'Node.js is a simple and powerful tool for backend development. When combined with express, you can create lightweight, fast, scalable APIs quickly and simply. In this course, we will walk through how to stand up a lightweight Express server serving truly RESTful services using Node.js, Mongoose, and MongoDB. We will implement all of the RESTful verbs to get, add, and update data from our service. We will also spend some time working through unit and end to end integration tests for our services.',70,4,4,1,NULL,NULL,NULL),
 (18,'Building Web Applications with Node.js and Express 4.0','1h 50m','Beginner',1500,'Node.js is a simple and powerful tool for backend JavaScript development. In this session, I will show you everything you need to know to get started in web development with Node.js. We will start with the basics of Node.js and selecting an IDE. We will explore template engines, and rendering HTML out of Express. We will cover all aspects of routing including express middleware. We will work with multiple database and backend APIs. I will cover local security with Passport.js.',100,3,4,3,NULL,NULL,NULL),
 (19,'Understanding Machine Learning with Python','2h 00m','Beginner',2000,'When working with data, machine learning can be used to do incredible things, including predicting future events. Its ease of use combined with the power of scikit-learn is causing Python to become the preferred development language for many machine learning practitioners. In this course, Understanding Machine Learning with Python, you will learn how Python developers and data scientists use machine learning to predict the likelihood of events based on data. Throughout this course, you will use Python and the scikit-learn library. Specifically, you will learn how to format your problem to be solvable, how to prepare your data for use in a prediction, and finally how to combine that data with algorithms to create models that can predict the future, all performed in the Jupyter Notebook environment. By the end of this course, you will have a better understanding of how machine learning can help you put your data to good use in predicting future events, and you\'ll also know how to use Python to make it happen.',100,4,24,5,NULL,NULL,NULL),
 (20,'Understanding Machine Learning with Python','1h 30m','Intermediate',1300,'When working with data, machine learning can be used to do incredible things, including predicting future events. Its ease of use combined with the power of scikit-learn is causing Python to become the preferred development language for many machine learning practitioners. In this course, Understanding Machine Learning with Python, you will learn how Python developers and data scientists use machine learning to predict the likelihood of events based on data. Throughout this course, you will use Python and the scikit-learn library. Specifically, you will learn how to format your problem to be solvable, how to prepare your data for use in a prediction, and finally how to combine that data with algorithms to create models that can predict the future, all performed in the Jupyter Notebook environment. By the end of this course, you will have a better understanding of how machine learning can help you put your data to good use in predicting future events, and you\'ll also know how to use Python to make it happen.',70,1,24,3,NULL,NULL,NULL),
 (21,'ASP.NET MVC 5 Fundamentals','2h 00m','Intermediate',2000,'ASP.NET MVC 5 Fundamentals covers all the new features of ASP.NET MVC 5, as well as the new features for web developers in Visual Studio 2013. The course looks at the Katana and OWIN middleware components to see how the components work at a low level and how they fit into ASP.NET pipeline. The new identity and membership components are covered, and a demonstration is included to customize and seed the membership database. We look at Bootstrap 3\'s grid and responsive design system, as well as the Web API 2, including a demo of making authenticated calls against a Web API from JavaScript. The Entity Framework version 6 is covered including the new async API in EF6, and we\'ll build an application to stream performance counter data using SignalR and Knockout. Finally, there are tips and tricks for editing HTML, JavaScript, CSS and LESS with Visual Studio 2013 and extensions like Web Essentials, which brings the Zen Coding plugin to the Visual Studio.',70,5,8,1,NULL,NULL,NULL),
 (22,'Quick Start to JavaScript: Volume 1','2h 30m','Beginner',2300,'Throughout this series of JavaScript tutorials we\'ll learn how to write the programming language from scratch, so you can start creating code of your own. Quick Starts are a series of specially constructed tutorials meant to be followed in sequence and include valuable exercises to reinforce learned concepts.This tutorial assumes no prior programming experience and starts exploring the logic of a language and the concepts needed to write code from the ground up. We\'ll start by exploring what we can create with JavaScript and then learn how to start creating our own code with the basic building blocks of JavaScript using strings, numbers, booleans, common operators, variables, and control flow. We\'ll finish the JavaScript training by putting together all the concepts with the creation of a simple zombie text adventure game.While building a project together, you\'ll be provided with valuable knowledge, and the real power comes from being able to take the techniques you\'ve learned and apply them in a different way to your own work. With this in mind, you\'ll be presented with an assignment immediately following each volume. These assignments will challenge you to take the skills that you\'ve learned in a particular volume and apply them to a different asset.These tutorials are designed to be taken in sequence so we really encourage you to start with this volume and proceed all the way through to Volume 3, all so you can take advantage of the periodic assignments along the way to get the full learning experience. Software required: Mozilla Firefox.',100,4,6,3,NULL,NULL,NULL),
 (23,'Spring with JPA and Hibernate','5h 10m','Intermediate',5100,'This course walks through developing applications using Spring with JPA and Hibernate. There is a scaffold application using Spring MVC. The material will be developed using Eclipse/Spring STS and all downloads will be done using Maven.',70,7,3,3,NULL,NULL,NULL),
 (24,'Introduction to MongoDB','2h 30m','Beginner',2300,'MongoDB is a very popular open source NoSQL database. When scalability and speed are required, this database shines. It is a document database which imposes very little and has drivers for many programming languages. This course will teach you how to get mongo running, manipulate and query data, index for speed, and arm you with the essential skills required to start using Mongo.',100,1,26,5,NULL,NULL,NULL),
 (25,'Introduction to MongoDB','2h 4m','Beginner',2000,'MongoDB is a very popular open source NoSQL database. When scalability and speed are required, this database shines. It is a document database which imposes very little and has drivers for many programming languages. This course will teach you how to get mongo running, manipulate and query data, index for speed, and arm you with the essential skills required to start using Mongo.',100,3,26,2,NULL,NULL,NULL),
 (26,'Object-oriented Programming in JavaScript - ES6','2h 18m','Intermediate',2180,'ES6 is a major upgrade to JavaScript, offering a new syntax for creating objects and working with inheritance. If you want to stay up to date with the JavaScript programming language, you need to watch this course! In this course, Object-oriented Programming in JavaScript - ES6, you will learn this new syntax and create many different kinds of classes. You\'ll learn all the features of JavaScript classes including working with constructors, prototypes, inheritance, and simulating public, private, and static members. Next, you\'ll create classes for regular business objects, virtual objects which you want to extend, a data service, and user interface components. Finally, you\'ll go step by step through the creation of a sample object-oriented web application. When you\'re finished with this course, you will have a strong understanding of ES6, and how t use classes and modules to develop software using modern programming techniques.',70,5,27,1,NULL,NULL,NULL),
 (27,'C# Interfaces','2h 36m','Intermediate',2360,'Do you want code that\'s maintainable, extensible, and easily testable? If so, then C# interfaces are here to help. In this course, we’ll take a look at how we can use interfaces effectively in our code. We\'ll start at the beginning (\"What are interfaces?\") and then explore why we want to use them. Along the way we\'ll create and implement own interfaces, see how to explicitly implement interfaces, and take a look at dynamic loading, unit testing, and dependency injection. All of which is made possible with interfaces.',70,4,16,3,NULL,NULL,NULL),
 (28,'ASP.NET Core with the New MSBuild Based Tooling','2h 4m','Intermediate',2400,'At the core of developing ASP.NET core applications is the project system. It brings together all the pieces to compile and execute your applications. In this course, ASP.NET Core with the New MSBuild Based Tooling, you\'ll learn how to use the new .NET Core Tools release to develop web applications. First, you\'ll explore the myriad of new benefits, including a modernized, lean MSBuild project file that combines the best of project.json and MSBuild. Next, you\'ll discover the new templating engine for dotnet new. Additionally, you\'ll dive into several command line tools to modify solution and project files, making it even easier to develop ASP.NET Core apps on any platform, with any IDE. Finally, you\'ll cover how the benefits of this new project system are being ported to other .NET project types. By the end of this course, you\'ll have a foundational knowledge of the new tooling and know how to get the most out of it.',70,7,8,4,NULL,NULL,NULL),
 (29,'Ethical Hacking: Understanding Ethical Hacking','2h 2m','Advance',2200,'This course will start you down the path of becoming an Ethical Hacker, or in other words; become a \'Security Profiler.\' You will learn to start thinking and looking at your network through the eyes of malicious attackers. You will learn to understand the motivation of an attacker. It is the duty of all System Admins and Security Professionals to protect their infrastructure from not only outside attackers but also attackers within your company. We will cover the terminology used by attackers, the difference between \'hacking\' and \'ethical hacking\', the phases of hacking, the types of attacks on a system, what skills an Ethical Hacker needs to obtain, types of security policies, why Ethical Hacking is essential, how to be in the \'know\' of what\'s happening in the hacking world, who a \'hacker\' is, what are the biggest security attack vectors, and more.',50,8,25,4,NULL,NULL,NULL),
 (30,'Introduction to PowerShell','1h 22m','Intermediate',1220,'PowerShell is Microsoft\'s full featured scripting language. Built on the .Net Framework, it is extensible, powerful, and easy to work with. In this course you\'ll begin your path to PowerShell mastery by learning the basics, including: how to customize the User Interfaces; basic PowerShell commands; variables; loops; branching; script blocks; working with files; processing user input; creating and extending functions.',70,6,21,1,NULL,NULL,NULL),
 (31,'Python – Beyond the Basics','2h 4m','Beginner',2040,'Python – Beyond the Basics builds directly on the foundations laid in our introductory Python course, Python Fundamentals. Python is a great dynamic language for web development, big data, science, and scripting. In this course we add breadth and depth to your Python skills, exploring the topics you\'ll need to create robust and readable applications of any size. On completing this course, you\'ll be familiar with the majority of Python techniques and constructs used in Python programs. Crucially, we\'ll also advise you on when – and when not – to use the different tools available in Python to best effect, to maximize the quality of your code, your productivity, and the joy inherent in coding in Python.',100,4,24,2,NULL,NULL,NULL),
 (32,'How Git Works','1h 36m','Advance',1360,'Here is a confession: I used Git for a long time without really understanding what was going on. I knew all the basic commands, but I still got stranded when something went wrong. Why did my rebase fail? How did I manage to mess up the remote? Then I found the key to Git: the content of the .git directory. Once I understood the underlying model, everything about Git clicked into place. Things that used to be baffling and complicated suddenly looked simple and elegant. Let me share these insights with you. It will take you just two hours to wrap your head around Git.',50,1,23,1,NULL,NULL,NULL),
 (33,'Integration Testing of Entity Framework Applications','5h 40m','Intermediate',5400,'Having a good integration test suite is your greatest asset. In this course, Integration Testing of Entity Framework Applications, you\'ll learn that a good integration test suite is the best way to ensure the quality of your Entity Framework application. First, you\'ll set up a Continuous Integration server to rebuild a database and run all integration tests on every checkin. Next, you\'ll keep your test readable and resilient to change, so that they help you implement new features rather than hold you back. Finally, you\'ll find the balance between unit tests and integration tests so that you use the best technique in every case. After this course, you\'ll know that by investing in a quality test suite you\'ll increase both velocity and quality.',70,4,17,5,NULL,NULL,NULL),
 (34,'What\'s New in Java 8','5h 40m','Advance',5440,'This course covers the most useful parts of Java 8. This update of the Java platform is the biggest of all. It\'s even bigger than Java 5 that saw the introduction of generics. We\'ll begin with lambda expressions and the Stream API, which bring new fundamental patterns to the Java platform. Many problems solved with the Iterator pattern are now solved much more efficiently with the patterns brought by the Stream API. But Java 8 is not only about lambdas, streams and collectors, there is also a new Java Date and Time API which are covered in this course. This API fixes all the flaws of the previous Date/Calendar API and brings new, very useful, concepts and tools. Many new features that bring a functional programming approach have been added to the Collection API. This is also covered in detail. Many more things are covered; little things, scattered here and there in the JDK, like this new StringJoiner class, useful to join strings with a prefix, a postfix, and a separator. JavaFX and Nashorn are also quickly covered, to show the FXML way to describe Graphical User Interfaces, and the new ways to describe JavaFX in Javascript using Nashorn.',50,2,6,3,NULL,NULL,NULL),
 (35,'Getting Started With Jenkins Continuous Integration','2h 2m','Intermediate',2200,'Jenkins is one of the most popular tools for doing continuous integration on ANY platform or technology! One of the things that makes Jenkins so popular is how flexible it is to handle just about any kind of build or continuous integration process you can think of through the hundreds of plugins that are available. In this course you will learn everything you need to know to get started using Jenkins and setup your first continuous integration server. We\'ll cover installing Jenkins, configuring Jenkins and getting a basic job running. Once we are confident in the basic functionality of Jenkins we\'ll move on and talk about all the plugins that are available and how you might use them. Finally, we\'ll take a look at the big picture and show you what you can really do with Jenkins. Along the way I\'ll give you some great tips that will help you pick the best plugins for Jenkins and give you some good strategies for successfully bringing you build system into Jenkins with little headache. By the end of this course you should feel confident installing Jenkins and setting up basic jobs. You should also have a clear picture of what you can do with Jenkins and how to expand its capabilities. If you\'ve been wanting to learn about Jenkins, but didn\'t know where to start, this course might be just what you need.',70,3,22,2,NULL,NULL,NULL),
 (36,'Using ASP.NET Core to Build Single-page Applications','1h 36m','Intermediate',1360,'Learn to code faster, boost performance and SEO, and to use advanced client-side debugging features. In this course, Using ASP.NET Core to Build Single-page Applications, you\'ll learn how to leverage that power to get a streamlined development experience and build efficient production ready apps. First, you\'ll discover how to streamline the dev experience. Next, you\'ll explore server-side prerendering and how to create efficient production builds. Finally, you\'ll learn about continuous deployment. By the end of this course, you\'ll be able to scaffold an ASP.NET core web application fronting with your favorite spa framework.',70,1,8,4,NULL,NULL,NULL),
 (37,'AngularJS for .NET Developers','2h 40m','Intermediate',2400,'ASP.NET Core is a whole new way of developing web-applications with .NET and C#. In this course, Building a Web App with ASP.NET Core, MVC 6, EF Core, and Angular, you\'ll learn how this new change can speed up development of web apps. Next, you\'ll learn how to create web pages using ASP.NET MVC and also how to build API\'s with ASP.NET MVC. Finally, you\'ll learn how to secure your pages and API\'s with ASP.NET identity and also learn how to use AngularJS for client-side development. By the end of this course, you\'ll know how to build your own app with ASP.NET Core.',70,8,4,5,NULL,NULL,NULL),
 (38,'Microsoft Azure IaaS Monitoring and Management - Getting Started','2h 4m','Advance',2400,'In this course, Microsoft Azure IaaS Monitoring and Management - Getting Started, you\'ll learn the skills you need to keep your proverbial finger on the pulse of your Microsoft Azure infrastructure-as-a-service (IaaS) services. First, you\'ll discover how to use Azure Monitor to perform basic monitoring. Next, you\'ll explore how to install and configure Azure management solutions, particularly the Insight and Analytics solution. Finally, you\'ll get comfortable with using Log Analytics and Log Search to \"drill down\" into the most important data in your IaaS systems. When you\'re finished with this course, you\'ll have all the tools you need to confidently manage and monitor your IaaS deployments, and you\'ll be ready to dive deeper into Azure systems architecture.',50,3,19,2,NULL,NULL,NULL),
 (39,'SQL Server: Installing and Configuring SQL Server 2016','3h 2m','Beginner',3200,'How do you configure Windows correctly for running SQL Server 2016? How do you choose a RAID level for the SQL Server storage? Which installation options should you choose for SQL Server, and how do you keep SQL Server up-to-date after installing it? This course, SQL Server: Installing and Configuring SQL Server 2016, answers all these questions and more. The course begins by explaining why it is so important to install SQL Server 2016 correctly and then explains how to configure Windows for stability and performance. It then describes and shows the SQL Server 2016 installation process, including which options to choose or not, along with common configuration mistakes to avoid. After that it explains how to keep your SQL Server 2016 instance up-to-date with Service Packs and Cumulative Updates, as well as post-installation configuration tasks. Finally it explains how to configure Database Mail and SQL Server Agent Alerts so that you are notified of critical errors when they occur. When you\'re finished with this course, you\'ll be better prepared to install SQL Server for the first time.',100,4,13,2,NULL,NULL,NULL),
 (40,'Shell Scripting with Bash','2h 00m','Intermediate',2000,'Bash shell scripts allow you to automate just about any task on a UNIX system. They combine the power of all the UNIX userland utilities with a powerful scripting language. Whether you are a system administrator, a developer or a power user, shell scripts will make you more productive.',70,7,21,1,NULL,NULL,NULL),
 (41,'Microsoft Azure IaaS Monitoring and Management - Getting Started','2h 0m','Advance',2000,'In this course, Microsoft Azure IaaS Monitoring and Management - Getting Started, you\'ll learn the skills you need to keep your proverbial finger on the pulse of your Microsoft Azure infrastructure-as-a-service (IaaS) services. First, you\'ll discover how to use Azure Monitor to perform basic monitoring. Next, you\'ll explore how to install and configure Azure management solutions, particularly the Insight and Analytics solution. Finally, you\'ll get comfortable with using Log Analytics and Log Search to \'drill down\' into the most important data in your IaaS systems. When you\'re finished with this course, you\'ll have all the tools you need to confidently manage and monitor your IaaS deployments, and you\'ll be ready to dive deeper into Azure systems architecture.',50,3,19,3,NULL,NULL,NULL),
 (42,'RESTful Web Services with PHP and Laravel','2h 54m','Intermediate',2540,'With all kinds of applications and devices connecting to web services, traditional server-side rendered web pages are losing ground. Today, RESTful services play an invaluable role and being able to develop such services poses a great advantage. In this course, you\'ll learn which principles RESTful services should follow and how to use the many helpers and tools Laravel offers to create such a service. Besides learning the steps required to set up API endpoints, handle requests and store data, you\'ll also understand how to incorporate authentication to secure your service. At the time you\'ve finished this course, you\'ll understand how to structure a RESTful service and implement it using Laravel. This will help you to gain a strong position in an environment where skills needed for developing web services are more important than ever before.',70,1,14,5,NULL,NULL,NULL),
 (43,'Securing Your Node.js Web App','6h 20m','Advance',6200,'Since its creation in 2009, Node.js has seen exponential growth in its community of users and the applications they are building. With the drive towards a connected society, the need for web applications has never been greater. Yet, despite the push to connect the world as we know it, businesses of all sizes fall victim to data breaches everyday. The security risks that a Node.js based web application face are no different than any other web application. This course, Securing Your Node.js Web App, will empower you with both the understanding of various web based security risks and how to apply the proper mitigation in your Node.js web application. First, you\'ll learn about implementing proper authentication and session management. Next, you\'ll explore how to protect your MongoDB database from injection attacks and how to handle untrusted data - a key player in many of the risks you\'ll look at. Finally, you\'ll wrap up by learning how to control application and user authorization to key access areas and the benefits of serving our application over HTTPS. By the end of this course, you\'ll be on your way to building a significantly more secure Node.js web application.',50,4,4,2,NULL,NULL,NULL),
 (44,'Building HTML5 and JavaScript Apps with MVVM and Knockout','1h 36m','Intermediate',1360,'Do you write a lot of HTML, JavaScript, and jQuery to push and pull data? Does your JavaScript seem to lack the structure and patterns of your non script code? In this course you will learn popular techniques to use data binding to bind your data to your target controls in HTML writing less code, but gaining more power. See how to consume json data, use json objects in JavaScript, and use declarative binding all by using the KnockoutJS JavaScript library. Learn how the XAML data binding paradigm has been brought to the web world with observable objects, change notifications, subscriptions, and 2 way bindings. Explore modern JavaScript patterns and practices that follow the SOLID principles, reduce errors in your code, and make code easier to maintain. After taking this course you will have a solid foundation for building robust web apps using common JavaScript patterns, MVVM, and KnockoutJS.',70,4,12,2,NULL,NULL,NULL),
 (45,'Webpack Fundamentals','2h 2m','Beginner',2200,'Front end web development is getting more and more complex: more moving pieces are being introduced every day. The days of doing front end web development without a build are drawing to a close. Of all the front end build tools, Webpack is one of the most interesting and is gaining popularity. This course will cover all the ins and outs of Webpack, how to use it for your own purposes, and how to customize it to fit your exact needs.',100,8,20,1,NULL,NULL,NULL),
 (46,'MySQL Fundamentals','2h 23m','Beginner',2230,'MySQL is a popular choice of database for use in web applications, and is a central component of the widely used LAMP open source web application software stack. This course covers the fundamentals of MySQL, including how to install MySQL as well as write basic data retrieval and data modification queries.',100,1,13,2,NULL,NULL,NULL),
 (47,'Introduction to Azure App Services','2h 12m','Intermediate',2120,'Understanding what to use when inside of Azure App Services, and how it all ties together, can be daunting. In this course, Introduction to Azure App Services, you\'ll learn when and how to take advantage of this powerful platform. You\'ll start with an introduction to the basic concept of the cloud and what the benefits of it are and how Azure App Services provides this model as a platform. You\'ll then get into what Mobile Apps are, as well as some details about offline sync and push notifications. Before ending you\'ll get to see what Azure functions are and how you can use them to run small applications effortlessly. By the end of this course, you\'ll be ready to focus on creating great apps without having to worry about the plumbing.',70,3,19,1,NULL,NULL,NULL),
 (48,'Introduction to Web Development','1h 30m','Beginner',1300,'Introduction to Web Development is a one-stop course that covers all of the tools you’ll need to create websites. The course contains in-depth discussions of each of \'The Big Three\' tools used for Website development: Hypertext Markup Language (HTML), Cascading Style Sheets (CSS), and JavaScript as well as getting started with GitHub and Node.js. This course gives you the skills you need to be a professional web developer. Course materials can be found at https://bit.ly/1jXij63',100,5,12,1,NULL,NULL,NULL),
 (49,'Maven Fundamentals','2h 2m','Intermediate',2200,'This course covers all of the basic fundamentals of Maven. It covers dependencies, plugins, repositories, IDE integrations, and all the basic commands of Maven.',70,3,2,3,NULL,NULL,NULL),
 (50,'JavaScript From Scratch','3h 25m','Intermediate',3250,'Building a JavaScript application from scratch today is overwhelming. You have to make decisions about package management, bundling, linting, transpiling, automated testing, and much more. There are literally over 40 important decisions to consider. This course is a playbook of potential options that provides a clear path through the key decisions. Along the way, we\'ll build a robust automated development environment from the ground up using ES6. You’ll learn how to set up a reusable development environment that provides a powerful foundation for future projects, that’s tailored just for your team’s needs.',70,5,6,1,NULL,NULL,NULL),
 (51,'Web Application Penetration Testing with Burp Suite','1h 36m','Intermediate',1360,'In this course, Web Application Penetration Testing with Burp Suite, you will learn hands-on techniques for attacking web applications and web services using the Burp Suite penetration testing tool. This course is designed to expand your knowledge of the Burp Suite beyond just capturing requests and responses. First, you\'ll learn about scoping your target application properly. Next, you\'ll spend some time scanning to trigger potential security vulnerabilities in your target, then digging deep into the results to validate your findings. Finally, you\'ll wrap up by leaning how to properly report your results to your audience. By the end this course, you\'ll know how to perform all of these techniques at a comfortable and efficient level to better perform your job as a pen tester.',70,4,17,1,NULL,NULL,NULL),
 (52,'HTML5 Fundamentals','2h 4m','Beginner',2040,'HTML5 is a big and broad topic that has evolved much over the years. In this course, HTML5 Fundamentals, you\'ll learn about HTML5 from the new and updated markup to the associated JavaScript APIs that help make up the modern web. After gaining perspective on the breadth, scope, and history of HTML5 you learn about native selection, web forms, media, drawing, and drag and drop APIs. As you go through this course, you\'ll learn how to deal with out-of-date browsers and how you can detect browser capabilities so your web apps take advantage of all that HTML5 has to offer. After watching this course, you will have learned how to deal with out-of-date browsers and how you can detect browser capabilities so your web apps take advantage of all that HTML5 has to offer.',100,7,12,5,NULL,NULL,NULL),
 (53,'Advanced TypeScript','5h 40m','Advance',5400,'In order to take full advantage of TypeScript you must have the knowledge to use its advanced features to write clean and expressive code. In this course, Advanced TypeScript, you will learn how to harness the full power of the type system to write better code with fewer errors. You will learn how to extend your use of existing types with union, intersection, and tuple types. You\'ll then go over how to create and use decorators. You will also learn how to manage asynchronous code using promises and the async and await keywords. When you\'re finished with this course, you will have the advanced skills necessary to fully utilize the language to solve all of your client and server-side coding problems.',50,5,6,4,NULL,NULL,NULL),
 (54,'Real-Time Web with Node.js','3h 2m','Intermediate',3020,'In this course, Kyle Simpson builds your Node.js knowledge step-by-step, starting from simple one-line scripts to chat and video conferencing applications. Learn the HTML5 APIs you need to know for real-time communications such as canvas/video, sockets, getUserMedia, and WebRTC. Then dive into Node.js and learn all about how to use it from the ground up in the command line to communicating with HTML5 in real-time through asynchronous code in Node.js.',70,3,4,2,NULL,NULL,NULL),
 (55,'Building AngularJS and Node.js Apps with the MEAN Stack','1h 36m','Intermediate',1360,'The MEAN stack is becoming more and more popular. Angular has become the hottest new MVC framework, and using it with Node and Express means a high level of harmony between the client and server. Throw MongoDB on for data storage, and you have JavaScript from front to back. These applications are quick to put together, and represent the modern state of web application development. This course will help you get a full application up and running in no time, and introduce you to all the core concepts you need to build applications utilizing these technologies.',70,2,4,1,NULL,NULL,NULL),
 (56,'Unit Testing In Java With JUnit','2h 30m','Intermediate',2300,'Do you want to get started with unit testing in Java? Perhaps you already know a little about JUnit, but you\'ve always wanted to learn more about this useful framework? Either way, this course will teach you what you need to know to not only get started with JUnit, but to master all of the features of the JUnit framework. In this course, we\'ll start out by learning the basics of JUnit and how to create some basic unit tests. Then, we\'ll go into some of the lesser known advanced features of JUnit that will really help you write elegant tests with less code. After that, I\'ll show you how to integrate JUnit with your existing Ant or Maven build system and how you can automate the creation of JUnit reports. Finally, we\'ll wrap things up by going beyond the basic uses of JUnit by learning how to use stubs and mocks to really isolate classes and we\'ll also learn how to use JUnit for more than just unit testing. By the end of this course, you\'ll be a JUnit pro and will have a handful of useful tools and techniques you can use to make the most of the JUnit framework. If you are interested in JUnit, you won\'t want to miss this course.',70,7,17,4,NULL,NULL,NULL),
 (57,'Big Data: The Big Picture','5h 40m','Intermediate',5440,'In this course, ZDNet’s Big Data correspondent Andrew Brust teaches you all about Big Data. This course will get you up and running with the definitions and technologies you need to know, and the vendors you need to know about. By the end of the course, you’ll know what Big Data is, how it can integrate with conventional database and Business Intelligence (BI) technologies, and how to devise a strategy for adopting Big Data in your organization. No Big Data or NoSQL knowledge is required, but a lot will be imparted. This course is aimed at executives and business decision makers, and is actionable for technologists as well.',70,6,18,2,NULL,NULL,NULL),
 (58,'What is automation','1h 12m','Beginner',1120,'Creating automated tests for a web application can be challenging. Two of the biggest barriers to getting started are picking an automation tool and developing a framework for writing the tests. This course explores how to use the popular browser automation framework, Selenium, to create automated tests for web applications. We will examine using Selenium to directly record from within a Firefox browser, as well as using C# to automate the web browser using Selenium\'s API. We will also explore how to distribute tests over multiple machines using Selenium Server\'s grid capabilities. The course concludes with the implementation of a simple, maintainable framework for testing a web application using Selenium.',100,3,17,2,NULL,NULL,NULL),
 (59,'Getting Started With Elasticsearch for .NET Developers','2h 55m','Intermediate',2550,'Elasticsearch is a free, open source, distributed, real-time analytics and search engine. It\'s built to be used in environments where speed and availability are considered high priorities. This course will introduce users to Elasticsearch, do a walkthrough of a basic installation, and teach the user how to index data and query it efficiently. The course will then go on to teach more advanced querying techniques, filters, and analytics. Finally, the course will show users how to integrate Elasticsearch with their .NET projects using a basic console application example.',70,5,8,5,NULL,NULL,NULL),
 (60,'Introduction to CSS','2h 2m','Beginner',2200,'An Introduction to CSS will give you all the knowledge you need to start working with Cascading Style Sheets (CSS) and web design. During the course you\'ll see how to achieve 2 and 3 column layouts with CSS, and learn how to work with the HTML box model and CSS cascade feature. Along the way we\'ll also be styling text, changing colors, and using the flexibility and power of CSS selectors.',100,8,12,5,NULL,NULL,NULL),
 (61,'LINQ Fundamentals with C# 6.0','2h 2m','Advance',2020,'LINQ introduced radical changes to the C# language. In this course, LINQ Fundamentals with C# 6.0, you\'ll see features of the C# language that make LINQ work, as well as how to use LINQ effectively using practical examples. You\'ll start with seeing a demonstration of the power of LINQ along with some of the important features of the C# language for LINQ, including how to create and use extension methods and lambda expressions. Next, you\'ll focus on the behavior of LINQ queries and start to work with realistic data to learn how to filter, order, and project data. Finally, you\'ll see some demonstrations on how to use LINQ to XML as well as, how LINQ works with a remote datasource by using the Entity Framework against Microsoft SQL Server. By the end of this course, you\'ll be ready to process and query in-memory data, as well as work with XML and a SQL Server database.',50,2,16,3,NULL,NULL,NULL),
 (62,'HTML5 Web Component Fundamentals','2h 4m','Beginner',2300,'In this course, you\'ll learn how HTML5 Web Components give us the power to extend the web with our own rich, standards-based components. Web developers have been struggling for years to create truly reusable components. We struggle with styling, bundling, defining templates, and encapsulating our markup and styles from accidental manipulation. But HTML5 Web Components provide the power to finally define standards-based, reusable web components through four new technologies. Learn how to use the Shadow DOM to encapsulate the DOM and styling for your components. Define inert templates with the template tag. Extend HTML by registering your custom elements. And bundle this all together in a simple reusable package using HTML5 imports.',100,4,12,3,NULL,NULL,NULL),
 (63,'Oracle Cloud for Developers','5h 40m','Intermediate',5400,'Do you want to develop or migrate your existing web applications to run in the cloud? Perhaps you have an environment with multiple languages and runtimes at the same time? In this course, Oracle Cloud for Developers, you\'ll learn how to create Java SE and Node.js applications and run them in Oracle Application Container Cloud Service and take advantage of the power of the cloud. You\'ll learn all about integration with other Oracle Cloud Services such as Database. You\'ll also learn to deploy, monitor, and scale your applications instantly from the Web UI. By the end of this course, you\'ll know everything you\'ll required to create applications and run them in Oracle Application Container Cloud Service.',70,6,15,3,NULL,NULL,NULL),
 (64,'HTML5 Web Component Fundamentals','2h 44m','Intermediate',2440,'In this course, you\'ll learn how HTML5 Web Components give us the power to extend the web with our own rich, standards-based components. Web developers have been struggling for years to create truly reusable components. We struggle with styling, bundling, defining templates, and encapsulating our markup and styles from accidental manipulation. But HTML5 Web Components provide the power to finally define standards-based, reusable web components through four new technologies. Learn how to use the Shadow DOM to encapsulate the DOM and styling for your components. Define inert templates with the template tag. Extend HTML by registering your custom elements. And bundle this all together in a simple reusable package using HTML5 imports.',70,4,12,1,NULL,NULL,NULL),
 (65,'Improving CSS with PostCSS','1h 36m','Intermediate',1500,'PostCSS is like a Swiss army knife of CSS plugins with over 250 plugins that extend and alter the functionality of CSS itself. From CSS variables and mixins, to future-proofing, PostCSS has it all. In this course, Improving CSS with PostCSS, you will explore the best ways to integrate PostCSS within your workflow. Next, you will install and use some of the most popular PostCSS plugins so that you have a solid understanding of how to use any of the 250 plugins PostCSS offers. Finally, you\'ll learn how to write your own PostCSS plugin from scratch! If you\'re someone who deals with CSS on a regular basis, there\'s no reason you should not use PostCSS, and after watching this course, you will have a solid understanding of how to harness the power of PostCSS.',70,4,12,4,NULL,NULL,NULL),
 (66,'HTML Fundamentals','1h 36m','Beginner',1360,'HTML markup is the heart of any web application and this course will teach you the fundamentals of HTML regardless of the tool you use to author it. You will learn how to properly define your HTML markup and follow the standards, how to create lists, tables, and images, and all about text elements. Along the way you will also be show what NOT to do in your HTML.',100,3,12,3,NULL,NULL,NULL),
 (67,'RESTFul Services in Java using Jersey','1h 36m','Intermediate',1360,'This course walks through developing RESTFul web services in Java using the Jersey Framework. It walks through all the configuration and setup to begin developing using this framework.',70,7,14,2,NULL,NULL,NULL),
 (68,'What\'s New in SQL Server 2016 Reporting Services','3h 00m','Intermediate',3000,'So you\'re an experienced SSRS developer, but you need to learn the new features in SQL Server 2016 Reporting Services. Well this is the course for you! In this course, you\'ll focus only on the new and enhanced features in the latest release of SQL Server. First, you\'ll start with the new Report Portal, including the new KPI feature. Next, you\'ll look at the many enhancements around traditional (now called paginated) reports, including the ability to arrange parameters, html5 rendering, and the new treemap and sunburst chart types. Finally, you\'ll look at the exciting new Mobile Report Publisher, seeing how to create dashboards for not just the web but tablets and phones as well. By the end of this course, you\'ll be up to speed on all the new features in SQL Server 2016 Reporting Services.',70,4,13,4,NULL,NULL,NULL),
 (69,'HTML Forms','2h 2m','Intermediate',2020,'This course picks up where the HTML Fundamentals course left off with a focus on form processing. You will learn how to create forms, all about the various input types, scripting forms and submitting files in forms. In addition, this course introduces form processing on the server with several popular frameworks including ASP.NET, PHP, and Ruby.',70,4,12,1,NULL,NULL,NULL),
 (70,'Java Fundamentals: The Core Platform','5h 40m','Beginner',5400,'Java is the most in-demand programming language skill amongst software developers, and one of the most important skills for big data specialists. This course, Java Fundamentals: The Core Platform, provides thorough coverage of the core Java platform, giving you the foundation you need to begin developing Java applications using the features and capabilities of the Java Runtime Environment (JRE), as well as providing you with the skills you need to quickly ramp-up and begin developing effectively with Java using the JRE. First, you\'ll learn about working with streams, files, and the file system. You\'ll also learn about I/O topics specific to working with files such open/closing files, detecting end-of-file, and buffering. Next, you\'ll learn about configuring application execution and environments, the features available, and detailed discussions of the PATH and CLASSPATH environment variables that affect the Java runtime. Finally, you\'ll learn about multithreading and concurrency, taking a look at the basic ideas of the thread startup lifecycle along with the more sophisticated executor service. After watching this course, you\'ll be ready to begin working within any of the many environments that rely on Java.',100,4,6,2,NULL,NULL,NULL),
 (71,'Java Fundamentals: The Java Language','6h 47m','Intermediate',6470,'This course provides complete coverage of the Java programming language giving you the strong language foundation required for any Java-based development environment. Whether targeting a client-based, server-side, or Android environment, this course provides you with everything you need to quickly ramp up and become an effective Java programmer.',70,4,6,1,NULL,NULL,NULL),
 (72,'Java Fundamentals - Concurrency with Multithreading','2h 4m','Intermediate',2400,'Today most programs have a concurrent element and knowledge of concurrency is vital. In this course Java Fundamentals - Concurrency with Multithreading, you\'ll gain the skills you need to create and work with such software using the Java libraries. This will also form a basis from which to learn more advanced frameworks. Just because this is a fundamentals course, it doesn\'t mean it\'s solely for Java novices. A wide range of topics will be covered, some fairly advanced, which are appropriate to more seasoned developers. First, you\'ll learn how to make a program multithreaded. Next, you\'ll learn how to safely communicate and share data between the threads and avoid liveness issues such as deadlock. Finally, you\'ll finish this course by looking at thread signaling and thread pools. After completing this module, you should be able to write multithreaded software with ease and be able to confidently discuss the subject in an interview situation.',70,4,6,3,NULL,NULL,NULL),
 (73,'Java Fundamentals: Object-oriented Design','1h 36m','Beginner',1360,'Simply using an OO language like Java does not make your program object oriented. In fact, when used incorrectly, OO-language features can make your program bloated, overly complex, and impossible to maintain. This course, Java Fundamentals: Object-oriented Design, teaches you how to write effective production-quality OO systems by leveraging the basic principles of good OO design. It assumes you know the nuts and bolts of Java, and goes beyond those to teach you how to write effective, production-quality code in Java, or any other OO language. You will learn how to structure your code to be highly maintainable and easy to modify. You\'ll learn about the pitfalls of many common idioms (like getters and setters and too-open subclassing). You\'ll also see the SOLID principles used to solve real-world programming issues as well as see a lot of code that demonstrates the principles. When you\'re done with the class, you\'ll have a solid understanding of good OO structure and principles, and be able to apply those principles to your own work.',100,7,6,5,NULL,NULL,NULL),
 (74,'Java Fundamentals: Collections','3h 25m','Intermediate',3250,'Java is the most in-demand programming language skill amongst software developers, and one of the most important skills for big data specialists. This course, Java Fundamentals: The Core Platform, provides thorough coverage of the core Java platform, giving you the foundation you need to begin developing Java applications using the features and capabilities of the Java Runtime Environment (JRE), as well as providing you with the skills you need to quickly ramp-up and begin developing effectively with Java using the JRE. First, you\'ll learn about working with streams, files, and the file system. You\'ll also learn about I/O topics specific to working with files such open/closing files, detecting end-of-file, and buffering. Next, you\'ll learn about configuring application execution and environments, the features available, and detailed discussions of the PATH and CLASSPATH environment variables that affect the Java runtime. Finally, you\'ll learn about multithreading and concurrency, taking a look at the basic ideas of the thread startup lifecycle along with the more sophisticated executor service. After watching this course, you\'ll be ready to begin working within any of the many environments that rely on Java.',70,4,6,1,NULL,NULL,NULL),
 (75,'Java Web Fundamentals','6h 47m','Intermediate',6470,'Many Java web frameworks, such as Struts, are built on top of the Servlet and JavaServer Page specifications and base libraries. To fully understand how these frameworks operate, and to be able to take full advantage of the facilities they offer, you should understand the foundations such frameworks are built on. This course takes you through building a web application using the base Servlet and JavaServer Page libraries. The course discusses the Model-View-Controller pattern using Servlets as the Controller and JavaServer Pages as the View. You will also learn how to hide complex UI interaction inside tag libraries. The course will show you how it is possible to build a web application using these fundamental technologies, and how other frameworks are built.',70,4,6,5,NULL,NULL,NULL),
 (76,'Java EE: Programming Servlets','2h 10m','Beginner',2100,'Web application development can be made easier by using Java servlets. In this course, Java EE: Programming Servlets, you will begin with a complet overview of servlet architecture and lifecycle. First, you\'ll see the configuration of a Tomcat webserver in Eclipse and you\'ll learn how to read the request and response headers. Next, you\'ll learn how filters are applied to servlets and see many details about tracking session data, web annotations, and globalizing servlets. Finally, you\'ll go over asynchronous programming in servlets, debugging, packing, and deployment of servlets. By the end of this course, you will have a much more complete understanding of how web development using Java servlets works. Software required: Tomcat and Eclipse.',100,4,6,1,NULL,NULL,NULL);
INSERT INTO `course` (`courseId`,`courseName`,`courseDuration`,`courseType`,`courseCost`,`courseContent`,`courseCapacity`,`providerId`,`tagId`,`courseRatings`,`imgURL`,`preRequisites`,`extraData`) VALUES 
 (77,'Java EE: Java Server Pages','2h 4m','Intermediate',2400,'This course, Java EE: Java Server Pages, provides an end-to-end look at Java Server Pages. You\'ll start from the beginning, learning the fundamentals of JSP, Directives, and Standard Actions. Next, you\'ll learn explore Java Standard Tag Library, Expression Language, Using Custom Tags, and Projects. Finally, you\'ll tackle Project Development using the topics that you have learned in the previous modules. By the end of this course, you will have a solid foundation to get started with Web Development using JSP.',70,1,6,1,NULL,NULL,NULL),
 (78,'Functional Programming With Java','2h 40m','Intermediate',2400,'If you can write object-oriented programs in Java, and you\'d like to write even better Java, then this course is for you. Starting with real business problems, see how concepts from functional programming can help you in Java. From function values to streams, learn the significance of some of Java 8\'s additions -- and get the same benefits in Java 6! This course teaches ways of thinking that help functional programmers write code that doesn\'t break. This course is designed for Java programmers, although any object-oriented developer can benefit from the very clear explanations of concepts. It assumes no familiarity with functional programming. After this course, you\'ll have more design options and ideas, and you\'ll find writing Java more fun than before.',70,7,6,2,NULL,NULL,NULL),
 (79,'Building Your First Game For Android And The PC Using Java','2h 30m','Intermediate',2300,'Have you always dreamed of creating your own Android game, but didn\'t know where to get started? Do you want to learn about Android game programming in a fun and entertaining way, while being insulted by a cranky Space Academy Major? Perhaps you should enroll in the Pluralsight Space Academy. In this course, you will take on the role of a cadet in the illustrious Pluralsight Space Academy. Our drill instructors and teaching staff will school you in game mechanics as they verbally \"encourage\" you in this fast paced Android game programing course. This course will take you through the process of creating a space shooter game in Android step by step using the popular libGDX library. Even if you have no interest in Android, you can still watch the course and build a Java based cross platform game. This course is course 4 in the 4 part series on beginning Android development, so this course will assume you already know some Java, but because this course uses a cross platform game library, knowing much about Android is not required. Even if you haven\'t watched the other 3 courses in this series, you can still watch this course and learn how to create an Android game in Java. So, are you up for the challenge cadet? Are you ready to face the evil Nullapointers in space combat? Do you think you can hack it at the Pluralsight Space Academy?',70,5,5,2,NULL,NULL,NULL),
 (80,'Java Persistence API (JPA) 2.1','6h 47m','Advance',6470,'Applications are made up of business logic, interaction with other systems, user interfaces, and data. Most data manipulated by our Java applications have to be stored in databases, retrieved, and analyzed. In this course, you will learn the principle of object-relational mapping (ORM) and how to use Java Persistence API (JPA) to map your Java objects into relational databases.',50,1,6,2,NULL,NULL,NULL),
 (81,'Reactive Programming in Java 8 With RxJava','4h 23m','Intermediate',4230,'Cloud Computing has changed the landscape for software developers over the last several years. With the expansion in scale of our systems, the expectations of our users has grown in proportion. The level of responsiveness and resiliency required by modern cloud-based applications has strained our standard \"one logical thread\" approach to software. This approach provides a simplification for the software developer, but it can fall short in the face of a cloud based environment and often doesn\'t fully utilize the underlying hardware. This course will cover Reactive Programming and the tenants of the Reactive Manifesto using Java 8, with supplementary material for Java 7. We will examine the use of the RxJava Reactive Extension\'s asynchronous model, and learn to apply it in order to create scalable, responsive, and resilient applications that are well behaved, even while in failure modes.',70,6,9,2,NULL,NULL,NULL),
 (82,'Reactive Programming in Java 8 With RxJava','4h 23m','Intermediate',4230,'Cloud Computing has changed the landscape for software developers over the last several years. With the expansion in scale of our systems, the expectations of our users has grown in proportion. The level of responsiveness and resiliency required by modern cloud-based applications has strained our standard \"one logical thread\" approach to software. This approach provides a simplification for the software developer, but it can fall short in the face of a cloud based environment and often doesn\'t fully utilize the underlying hardware. This course will cover Reactive Programming and the tenants of the Reactive Manifesto using Java 8, with supplementary material for Java 7. We will examine the use of the RxJava Reactive Extension\'s asynchronous model, and learn to apply it in order to create scalable, responsive, and resilient applications that are well behaved, even while in failure modes.',70,8,9,4,NULL,NULL,NULL),
 (83,'Spring Fundamentals','2h 2m','Intermediate',2200,'This course covers all of the fundamentals of Spring. It covers Java Configuration, XML Configuration, Annotation based Configuration, Beans and their Scopes, and Properties.',70,2,1,4,NULL,NULL,NULL),
 (84,'Java Fundamentals: Exception Handling','4h 2m','Intermediate',4200,'This course provides complete coverage of the Java programming language giving you the strong language foundation required for any Java-based development environment. Whether targeting a client-based, server-side, or Android environment, this course provides you with everything you need to quickly ramp up and become an effective Java programmer.',70,7,6,4,NULL,NULL,NULL),
 (85,'Java Fundamentals: Generics','3h 12m','Beginner',3120,'This course covers the most useful parts of Java 8. This update of the Java platform is the biggest of all. It\'s even bigger than Java 5 that saw the introduction of generics. We\'ll begin with lambda expressions and the Stream API, which bring new fundamental patterns to the Java platform. Many problems solved with the Iterator pattern are now solved much more efficiently with the patterns brought by the Stream API. But Java 8 is not only about lambdas, streams and collectors, there is also a new Java Date and Time API which are covered in this course. This API fixes all the flaws of the previous Date/Calendar API and brings new, very useful, concepts and tools. Many new features that bring a functional programming approach have been added to the Collection API. This is also covered in detail. Many more things are covered; little things, scattered here and there in the JDK, like this new StringJoiner class, useful to join strings with a prefix, a postfix, and a separator. JavaFX and Nashorn are also quickly covered, to show the FXML way to describe Graphical User Interfaces, and the new ways to describe JavaFX in Javascript using Nashorn.',100,1,6,4,NULL,NULL,NULL),
 (86,'Java Swing Development Using NetBeans','2h 4m','Intermediate',2500,'Learn how to build a lightweight cross-platform desktop application with Java Swing using the Netbeans IDE. This course is beneficial to the beginner and seasoned programmer alike. You will learn how to use the powerful Netbeans GUI Builder to quickly develop the user interface with little effort, so you can spend your valuable time building the application logic instead. At the conclusion, you will learn to build a fully functional application interacting with a database. If you prefer to program manually, this course will provide a great entry point into Java Swing\'s structure and features.',70,4,11,3,NULL,NULL,NULL),
 (87,'Mastering Java Swing - Part 1','2h 2m','Intermediate',2900,'This course teaches you the basics of Java Swing development. We\'ll get a basic Java desktop program up and running, and along the way we\'ll look at how to architecturally divide your application into separate, easily-maintainable modules, and how to get those modules to communicate with each other. You\'ll also discover how to use the most important Swing widgets.',70,6,11,3,NULL,NULL,NULL),
 (88,'Mastering Java Swing - Part 2','1h 40m','Intermediate',2100,'In this second part of Mastering Java Swing, the focus is on working with data. You\'ll see how to implement a model-view-controller architecture, how to connect to a database using JDBC and transfer data to and from your database and you\'ll learn how to use serialization to save objects to files and how to use preferences to save small amounts of data. We\'ll also take a look at more important Spring widgets.',70,8,11,4,NULL,NULL,NULL),
 (89,'Mastering Java Swing - Part 3','3h 20m','Intermediate',4600,'In this third part of the Mastering Java Swing course, we\'ll look at some of the more challenging and advanced Swing user interface widgets, including JTree, progress bars and custom table editors and renderers. We\'ll also look at multithreading in Swing. Plus you\'ll learn how to work with tabbed panes, split panes and draggable toolbars.',70,1,11,2,NULL,NULL,NULL),
 (90,'Mastering Java Swing - Part 4','6h 47m','Advance',7100,'In the final part of Mastering Java Swing, you\'ll learn how to create applets and how to implement basic animation in Swing. We\'ll create a simple applet that allows you to bounce a ball around the screen, exploring the graphics API and learning how to work with mouse listeners and key listeners. We\'ll also take a look at a free visual designer for Swing, setting the look and feel of Swing programs and how to use timers.',50,2,11,2,NULL,NULL,NULL),
 (91,'Creating Your First Spring Boot Application','1h 0m','Intermediate',2300,'This course introduces developers to the Spring Boot framework. Spring Boot is a new way of looking at Spring development and Java applications. Developers will learn the core aspects of Spring Boot by coding through the basics with a sample application. First, is the stand-alone architecture of Spring Boot. No more containers and XML files. Your app runs as a pure Java app and can be deployed in any environment that runs Java, including cloud platforms. Second, developers will learn about the Spring Boot starters. These starters allow quick and easy integration with many Spring technologies and 3rd Party libraries and frameworks. Starters also provide the concept of auto-configuration allowing developers to incorporate concepts such as data sources or REST services. By the end of this course, developers will be able to understand the Spring Boot architecture and how it plugs in and works with core Spring. They will be able to install Spring Boot, configure it, and utilize many of the framework\'s features.',70,8,1,3,NULL,NULL,NULL),
 (92,'Cassandra for Developers','2h 2m','Intermediate',5300,'Starting with a brief history of Cassandra, we use Docker to stand-up a Cassandra cluster that we\'ll use throughout the course. We discuss replication strategies and Cassandra\'s support for \"tunable consistency.\" We introduce CQL along with tables, keyspaces, and common datatypes. We explore primary keys and how they can be made up of both partition keys as well as clustering keys. We\'ll look at approaches for storing time series data in Cassandra. Complex data types, such as sets, lists, maps, tuples, and user defined types are addressed as well. We wrap up with a look at secondary indexes, batches, and lightweight transactions.',70,3,10,1,NULL,NULL,NULL),
 (93,'Introduction to Spring MVC','3h 25m','Beginner',4500,'This course is a basic introduction to Spring MVC. It covers building a basic app, architecture, controllers, views, tags, validation, and ajax within Spring MVC.',100,2,1,1,NULL,NULL,NULL),
 (94,'Building Applications with React and Flux','6h 47m','Intermediate',5500,'React is a library with so much power, but so few strong opinions. So building something significant requires a large number of decisions and work to build the foundation. In Building Applications with React and Redux in ES6, you will learn how to use Redux, React Router, and ES6 to build powerful and fast React applications from the ground up, as well as use Webpack, Babel, ESLint, npm scripts, Mocha, Enzyme. Finally, you will create a rapid feedback development environment that runs linting and tests, transpiles ES6 to ES5, starts up Express as a webserver, opens the application, and hot reloads changes every time you hit save and deploys with a single command. When you\'re finished with this course, you will have a foundational knowledge of React and Redux in ES6 that will help you as you move forward building robust, scalable React applications using a custom, rapid feedback development environment.',70,5,9,5,NULL,NULL,NULL),
 (95,'Building a Full-Stack App with React and Express','2h 34m','Intermediate',6000,'In this course, we\'ll build a full-featured web application which emphasizes lighting-fast load times and live updates. We\'ll learn how to use React.js to build a front-end web application, and use Browserify and Gulp to load the app isomorphically in Node.js. We\'ll also learn how to implement Express for handling HTTP requests, and how to integrate Mongoose with Express for fast and expressive long-term data storage.',70,1,9,5,NULL,NULL,NULL),
 (96,'Styling React Components','2h 30m','Intermediate',3500,'React is a library with so much power, but so few strong opinions. So building something significant requires a large number of decisions and work to build the foundation. In Building Applications with React and Redux in ES6, you will learn how to use Redux, React Router, and ES6 to build powerful and fast React applications from the ground up, as well as use Webpack, Babel, ESLint, npm scripts, Mocha, Enzyme. Finally, you will create a rapid feedback development environment that runs linting and tests, transpiles ES6 to ES5, starts up Express as a webserver, opens the application, and hot reloads changes every time you hit save and deploys with a single command. When you\'re finished with this course, you will have a foundational knowledge of React and Redux in ES6 that will help you as you move forward building robust, scalable React applications using a custom, rapid feedback development environment.',70,6,9,4,NULL,NULL,NULL),
 (97,'React.js on Rails: Building a Full Stack Web App','2h 2m','Intermediate',6000,'A demonstration for building a basic Twitter Clone with React and Flux from Facebook on the frontend, and with Rails as the backend JSON API server. Covering The Flux pattern for Actions, Dispatcher, Stores, and React.js components for Views, and writing all JavaScript with ECMAScript2015 (ES6) syntax, and using Webpack and Babel to transpile JavaScript files and manage their dependencies.',70,2,9,5,NULL,NULL,NULL),
 (98,'Active Directory Programming for Developers','2h 4m','Intermediate',2500,'Active Directory is the employee information store for businesses large and small. However, very few developers understand Active Directory well enough to leverage its capabilities. You have spent hundreds of hours learning SQL, now it’s time to spend two learning how to use Active Directory.',70,7,6,5,NULL,NULL,NULL),
 (99,'Mastering React Testing with Jest','3h 25m','Advance',4300,'Testing web applications is one of the most important parts of the development process and Jest, the testing framework from the makers of React, is one of the newest and most powerful tools for doing so. In this course, we\'ll fully implement a suite Jest tests. The course will begin with a detailed overview of the Jest API and several hands on examples demonstrating how it works. Following that, we\'ll put together a full React application and then test a variety of its components using Jest and React Test Tools. Successful students of this course will be able to understand and apply the concepts of dependency mocking, testing Node modules, and testing asynchronous functionality.',50,1,17,1,NULL,NULL,NULL),
 (100,'Advanced React.js','2h 2m','Advance',5500,'Have you ever wanted to create full-stack Javascript applications with React.js? This course, Advanced React.js, covers many advanced topics and best practices about React.js. First, you\'ll learn how to configure and customize full-stack JavaScript environments. Next, you\'ll explore how to work with async data and manage an application state both internally and externally. Additionally, you\'ll dive into components context API, and learn how to use it with higher order components, pure components, presentational and container components, and all components lifecycle methods. Finally, you\'ll discover performance analysis and optimization, how to use immutable data structures, and how to create production builds for both React.js and Node.js. By the end of this course, you\'ll be able to efficiently use presentational and stateful React components in production.',50,2,9,2,NULL,NULL,NULL),
 (101,'Angular Reactive Forms','2h 2m','Advance',3000,'You can build forms in Angular with a template-driven approach using HTML and data binding, or a Reactive approach by defining the form model and validation in our component code. In this course, Angular Reactive Forms, you\'ll first learn how build Reactive forms. Next you\'ll learn how to validate user-entered data Finally, you\'ll wrap up learning how to save that data using HTTP. By the end of this course, you will have a simple, but fully operational Angular application that includes a Reactive form with full create, read, update, and delete (CRUD) support. You can use this application as a reference for your own development.',50,3,4,2,NULL,NULL,NULL),
 (102,'ASP.NET Core Fundamentals','4h 00m','Intermediate',4000,'ASP.NET Core is a whole new way of developing web-applications with .NET and C#. In this course, Building a Web App with ASP.NET Core, MVC 6, EF Core, and Angular, you\'ll learn how this new change can speed up development of web apps. Next, you\'ll learn how to create web pages using ASP.NET MVC and also how to build API\'s with ASP.NET MVC. Finally, you\'ll learn how to secure your pages and API\'s with ASP.NET identity and also learn how to use AngularJS for client-side development. By the end of this course, you\'ll know how to build your own app with ASP.NET Core.',70,1,8,3,NULL,NULL,NULL),
 (103,'ASP.NET MVC Advanced Topics','3h 25m','Advance',4500,'This course covers more advanced topics in ASP.NET MVC including Ajax, TDD, and best practices.',50,4,8,1,NULL,NULL,NULL),
 (104,'Building an Intelligent System: From Embedded to Cloud','2h 42m','Intermediate',3700,'This course is an advanced journey in the developing phases of an Intelligent System, using Windows Embedded 8.1 Industry and Windows Azure. After a brief introduction to the Internet of Things concept, we\'ll see how a real word intelligent system can be built, starting from requirements and specifications, passing through configuration, services, management, cloud backend, and communication strategies, up to the final deploy.',70,5,7,1,NULL,NULL,NULL),
 (105,'Introduction to Windows Embedded Standard 7','2h 4m','Intermediate',3200,'This course leads from the basic image creation steps using Image Builder Wizard (IBW) and Image Configuration Editor (ICE) into the advanced areas of embedded operating system development. Learn to build systems that are able to withstand harsh environments for dedicated vertical markets and secure them properly. Use embedded enabling features to boot systems directly into a custom shell application leveraging auto-logon, write-protect partitions and suppress/replace any of the Windows typical branding elements to guarantee a truly customized user experience on the device. Another focal point of the course is management and maintenance in factory and field, which help to complete a sound picture of an embedded system\'s life cycle. All course topics are explained using examples derived from real-world projects and are spiced with important tips, tricks and best practices.',70,6,7,5,NULL,NULL,NULL),
 (106,'What Is Programming?','2h 30m','Beginner',2200,'If you want to begin programming, start here. In this fast-paced and entertaining course, What Is Programming, you\'ll learn the fundamentals, the essential ideas, and the concepts for success in any programming language. First, you\'ll learn how to write a computer program and learn how to get the computer to understand it. Next, you\'ll learn all about the syntax - or rules of programming languages. Finally, you\'ll explore how to make real-world programming easier, from libraries to frames, to SDKs and APIs. By the end of this course, you will not only be on your way to becoming a software developer, but will also have learned how to work with them, manage them, or live with one.',100,1,6,5,NULL,NULL,NULL),
 (107,'Android Fundamentals: Content Providers','1h 50m','Begineer',2700,'Android Framework provides developers with four components: Activity, Service, BroadcastReceiver, and ContentProvider. This course, Android Fundamentals: Content Providers, talks about how ContentProvider helps an application manage access to data stored by itself and provides a way to share data securely with other apps. Content providers are the standard interface that connect data in one process with code running in another process. This course starts with overview of ContentProvider and letting you design a structured data storage such as SQlite database from scratch. With the help of ContentProvider you\'ll then perform CRUD operations on SQlite database. Further, you\'ll explore how to share app\'s private data securely with some other apps using ContentProvider. At the end of the course, you\'ll use the concept of Android Permissions to enhance application security.',100,4,5,4,NULL,NULL,NULL),
 (108,'Angular: Getting Started','2h 4m','Intermediate',3500,'Whether you are new to Angular or new to Angular, if you want to create great web apps and stay up to date on the latest app development technologies, you\'re going to want to come up to speed quickly with Angular\'s components, templates, and services. This course provides the basics you need to get started building an Angular application. First, you\'ll learn how to set up your environment, learning about components, templates, and data binding and how they work together. Next, you\'ll discover how to build clean components with strongly-typed code, as well as building nested components and how to use dependency injection to inject the services you build. Finally, you\'ll cover how to retrieve data using HTTP, navigation and routing, and you\'ll revisit the Angular setup process. By the end of this course, you\'ll be up to date on all the latest Angular knowledge and you\'ll be able to use Angular to create great apps in the future.',70,4,4,1,NULL,NULL,NULL),
 (109,'Understanding maven and spring','2h 30m','Intermediate',2500,'You\'ve built your first Spring Boot application. Now what? Itching to learn more? In this course, Spring Boot: Efficient Development, Configuration, and Deployment, you\'ll go beyond the basics and learn how you can do things faster, smarter, easier, and more cloud-enabled. First, you\'ll learn how to get developing faster using Spring Initializr and the IDE support in IntelliJ and Eclipse. Then, you\'ll learn the details behind @EnableAutoConfiguration by writing your own auto configurations. You\'ll also begin to understand the power of using @ConfigurationProperties to externalize your application configuration. Lastly, you\'ll learn how to take advantage of Docker as a cloud-agnostic way of deploying your application to the cloud using Amazon Web Services and the Amazon EC2 Container Service. When you\'re finished with this course, you\'ll have an excellent understanding of how to get started quickly with Spring Boot, how to easily write your own auto configurations, how to easily make use of externalized configuration, and how to deploy your Spring Boot application to the cloud.',70,1,2,5,NULL,NULL,NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


--
-- Definition of table `coursetag`
--

DROP TABLE IF EXISTS `coursetag`;
CREATE TABLE `coursetag` (
  `courseTagId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagId` int(10) NOT NULL,
  `courseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`courseTagId`),
  KEY `tagId` (`tagId`),
  KEY `coursesId` (`courseId`),
  CONSTRAINT `coursesId` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tagId` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coursetag`
--

/*!40000 ALTER TABLE `coursetag` DISABLE KEYS */;
INSERT INTO `coursetag` (`courseTagId`,`tagId`,`courseId`) VALUES 
 (1,4,1),
 (2,24,2),
 (3,5,3),
 (4,4,4),
 (5,8,5),
 (6,4,6),
 (7,8,7),
 (8,25,8),
 (9,4,9),
 (10,16,10),
 (11,11,11),
 (12,1,12),
 (13,24,13),
 (14,19,14),
 (15,4,15),
 (16,4,16),
 (17,4,17),
 (18,24,18),
 (19,24,19),
 (20,8,20),
 (21,6,21),
 (22,3,22),
 (23,26,23),
 (24,26,24),
 (25,27,25),
 (26,16,26),
 (27,8,27),
 (28,25,28),
 (29,21,29),
 (30,24,30),
 (31,23,31),
 (32,17,32),
 (33,6,33),
 (34,22,34),
 (35,8,35),
 (36,4,36),
 (37,19,37),
 (38,13,38),
 (39,21,39),
 (40,19,40),
 (41,14,41),
 (42,5,42),
 (43,4,43),
 (44,12,44),
 (45,20,45),
 (46,13,46),
 (47,19,47),
 (48,12,48),
 (49,2,49),
 (50,6,50),
 (51,17,51),
 (52,12,52),
 (53,6,53),
 (54,4,54),
 (55,4,55),
 (56,17,56),
 (57,18,57),
 (58,17,58),
 (59,8,59),
 (60,12,60),
 (61,16,61),
 (62,12,62),
 (63,15,63),
 (64,12,64),
 (65,12,65),
 (66,12,66),
 (67,14,67),
 (68,13,68),
 (69,12,69),
 (70,6,70),
 (71,6,71),
 (72,6,72),
 (73,6,73),
 (74,6,74),
 (75,6,75),
 (76,6,76),
 (77,6,77),
 (78,6,78),
 (79,5,79),
 (80,6,80),
 (81,9,81),
 (82,9,82),
 (83,1,83),
 (84,6,84),
 (85,6,85),
 (86,11,86),
 (87,11,87),
 (88,11,88),
 (89,11,89),
 (90,11,90),
 (91,1,91),
 (92,10,92),
 (93,1,93),
 (94,9,94),
 (95,9,95),
 (96,9,96),
 (97,6,97),
 (98,17,98),
 (99,9,99),
 (100,4,100),
 (101,8,101),
 (102,8,102),
 (103,8,103),
 (104,8,104),
 (105,7,105),
 (106,7,106),
 (107,6,107),
 (108,5,108),
 (109,4,109);
/*!40000 ALTER TABLE `coursetag` ENABLE KEYS */;


--
-- Definition of table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `optionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionId` int(10) unsigned NOT NULL,
  `optionval` varchar(45) NOT NULL,
  PRIMARY KEY (`optionId`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `questionId` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`optionId`,`questionId`,`optionval`) VALUES 
 (1,1,'1'),
 (2,1,'2'),
 (3,1,'3'),
 (4,1,'4'),
 (5,1,'5'),
 (6,2,'1'),
 (7,2,'2'),
 (8,2,'3'),
 (9,2,'4'),
 (10,2,'5'),
 (11,3,'1'),
 (12,3,'2'),
 (13,3,'3'),
 (14,3,'4'),
 (15,3,'5'),
 (16,4,'1'),
 (17,4,'2'),
 (18,4,'3'),
 (19,4,'4'),
 (20,4,'5');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `courseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  KEY `courseId` (`courseId`),
  CONSTRAINT `courseId` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `userprofile` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderId`,`userId`,`courseId`) VALUES 
 (151,182,106),
 (152,182,78),
 (153,151,44),
 (154,161,72),
 (155,141,41),
 (156,169,24),
 (157,195,58),
 (158,126,81),
 (159,149,97),
 (160,156,79),
 (161,197,11),
 (162,185,67),
 (163,117,27),
 (164,125,42),
 (165,188,104),
 (166,180,99),
 (167,121,65),
 (168,173,75),
 (169,121,109),
 (170,174,31),
 (171,134,40),
 (172,133,66),
 (173,145,30),
 (174,157,101),
 (175,196,50),
 (176,158,35),
 (177,142,20),
 (178,173,14),
 (179,180,86),
 (180,111,94),
 (181,194,17),
 (182,117,6),
 (183,142,98),
 (184,160,9),
 (185,178,23),
 (186,112,70),
 (187,134,8),
 (188,177,85),
 (189,197,43),
 (190,176,25),
 (191,141,104),
 (192,184,108),
 (193,196,3),
 (194,150,25),
 (195,164,11),
 (196,191,62),
 (197,120,17),
 (198,116,12),
 (199,154,47),
 (200,145,81);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `provider`
--

DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `providerId` int(11) NOT NULL AUTO_INCREMENT,
  `providerName` varchar(45) NOT NULL,
  `providerWebUrl` varchar(45) NOT NULL,
  `providerEmail` varchar(45) NOT NULL,
  `providerNumber` varchar(45) NOT NULL,
  `providerAddress` varchar(100) NOT NULL,
  PRIMARY KEY (`providerId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provider`
--

/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` (`providerId`,`providerName`,`providerWebUrl`,`providerEmail`,`providerNumber`,`providerAddress`) VALUES 
 (1,'Pluralsight','www.dummyPluralsight.com','support@DummyPluralSight.com','8912345632','DummyPluralSightAddress'),
 (2,'edX','www.dummyedX.com','support@DummyedX.com','8913085632','DummyedXAddress'),
 (3,'Udemy','www.dummyUdemy.com','support@DummyUdemy.com','4457145632','DummyUdemyAddress'),
 (4,'Charles Babbage','www.dummyCharlesBabbage.com','Charles_abbage@domain.com','7826519452','DummyCharlesBabbageAddress'),
 (5,'Tutor','www.dummyTutor.com','Tutor@domain.com','7642907546','DummyTutorAddress'),
 (6,'seekhle','www.dummyseekhle.com','seekhle@domain.com','7826899452','DummyseekhleAddress'),
 (7,'Padhai','www.dummyPadhai.com','Padhai@domain.com','7820000452','DummyPadhaiAddress'),
 (8,'Eduzone','www.dummyEduzone.com','Eduzone@domain.com','7826519999','DummyEduzoneAddress');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;


--
-- Definition of table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `questionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`questionId`,`question`) VALUES 
 (1,'How easy to understand was the course material ?'),
 (2,'How was your interaction with the instructor ?'),
 (3,'How easy to use was the providers site ?'),
 (4,'What was your overall experience with the course ?');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


--
-- Definition of table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(45) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`roleId`,`roleName`) VALUES 
 (1,'Learner'),
 (2,'Provider');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


--
-- Definition of table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tagId` int(10) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(45) NOT NULL,
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` (`tagId`,`tagName`) VALUES 
 (1,'Spring'),
 (2,'Maven'),
 (3,'Hibernate'),
 (4,'Angular'),
 (5,'Android'),
 (6,'Java'),
 (7,'Embedded'),
 (8,'ASP.NET'),
 (9,'ReactJS'),
 (10,'Cassadra'),
 (11,'Swing'),
 (12,'Html/CSS'),
 (13,'SQL'),
 (14,'RestFul'),
 (15,'Oracle'),
 (16,'C#'),
 (17,'Testing/Automation'),
 (18,'BigData'),
 (19,'Azure'),
 (20,'WebPack'),
 (21,'Shell'),
 (22,'Jenkins'),
 (23,'GIT'),
 (24,'Python'),
 (25,'Ethical Hacking'),
 (26,'MongoDB'),
 (27,'ES6');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;


--
-- Definition of table `userfeedback`
--

DROP TABLE IF EXISTS `userfeedback`;
CREATE TABLE `userfeedback` (
  `feedbackId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionId` int(10) unsigned NOT NULL,
  `questionId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`feedbackId`),
  KEY `optionId` (`optionId`),
  KEY `questionsId` (`questionId`),
  CONSTRAINT `optionId` FOREIGN KEY (`optionId`) REFERENCES `options` (`optionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `questionsId` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userfeedback`
--

/*!40000 ALTER TABLE `userfeedback` DISABLE KEYS */;
INSERT INTO `userfeedback` (`feedbackId`,`optionId`,`questionId`) VALUES 
 (1,4,2),
 (2,2,4),
 (3,3,3),
 (4,5,1),
 (5,3,4),
 (6,3,4),
 (7,1,4),
 (8,1,4),
 (9,1,3),
 (10,4,3),
 (11,4,4),
 (12,3,4),
 (13,1,4),
 (14,5,4),
 (15,3,1),
 (16,2,4),
 (17,3,4),
 (18,3,1),
 (19,4,1),
 (20,4,1),
 (21,3,4),
 (22,3,2),
 (23,3,1),
 (24,4,1),
 (25,3,3),
 (26,4,4),
 (27,3,4),
 (28,3,1),
 (29,3,1),
 (30,5,1),
 (31,4,2),
 (32,4,3),
 (33,2,2),
 (34,3,2),
 (35,4,4),
 (36,1,1),
 (37,4,3),
 (38,5,2),
 (39,3,4),
 (40,3,2),
 (41,3,3),
 (42,4,3),
 (43,4,2),
 (44,1,2),
 (45,2,2),
 (46,2,4),
 (47,4,2),
 (48,5,3),
 (49,3,2),
 (50,5,3),
 (51,5,4),
 (52,5,3),
 (53,1,4),
 (54,1,4),
 (55,4,1),
 (56,3,3),
 (57,5,2),
 (58,4,1),
 (59,4,4),
 (60,5,4),
 (61,5,2),
 (62,3,1),
 (63,1,2),
 (64,3,3),
 (65,2,3),
 (66,4,4),
 (67,3,2),
 (68,2,4),
 (69,2,2),
 (70,1,1),
 (71,5,1),
 (72,2,1),
 (73,2,1),
 (74,4,1),
 (75,1,2),
 (76,2,3),
 (77,2,2),
 (78,4,1),
 (79,2,2),
 (80,1,1),
 (81,2,3),
 (82,3,1),
 (83,4,4),
 (84,4,3),
 (85,4,2),
 (86,5,4),
 (87,4,1),
 (88,3,1),
 (89,3,2),
 (90,1,4),
 (91,4,2),
 (92,4,2),
 (93,3,2),
 (94,2,3),
 (95,5,3),
 (96,3,2),
 (97,3,4),
 (98,5,3),
 (99,3,4),
 (100,1,1);
/*!40000 ALTER TABLE `userfeedback` ENABLE KEYS */;


--
-- Definition of table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `userId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `userPassword` varchar(45) NOT NULL,
  `userPhone` varchar(45) NOT NULL,
  `roleId` int(10) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `roleId` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userprofile`
--

/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` (`userId`,`userName`,`userEmail`,`userPassword`,`userPhone`,`roleId`,`images`) VALUES 
 (101,'pumneeth','p@mindtree.com','ppp','123456790',1,'https://boygeniusreport.files.wordpress.com/2017/04/iphone-8-concept.jpg?quality=98&strip=all'),
 (102,'saloni','saloni@mindtree.com','saloni11123','7654321908',2,NULL),
 (103,'Bishal','Bishal.Bhattacharya@mindtree.com','Bishal@1234','8654548533',1,NULL),
 (104,'Soumodip','Soumodip.Sinha2@mindtree.com','Soumodip@1234','8026942777',1,NULL),
 (105,'Carson','Carson.Oneill2@mindtree.com','Carson@1234','8782066431',1,NULL),
 (106,'Gursimran','Gurusimran.Singh@mindtree.com','Guru@1234','8085000743',1,NULL),
 (107,'Manisha Kumari','manisha.9801@gmail.com','Manabh@123','9028125850',1,NULL),
 (108,'Bhagya','Bhagyalakshmi.Pasupureddy@mindtree.com','Bhagya@1234','7065572686',1,NULL),
 (109,'Saloni','Saloni.Aggarwal2@mindtree.com','Saloni@1234','9289150666',2,NULL),
 (110,'Jishnu','Jishnu.Patra@mindtree.com','Jishnu@1234','7744597777',1,NULL),
 (111,'Mehak','Mehak.Jindal@mindtree.com','Mehak@1234','5205459262',1,NULL),
 (112,'Supreeth','Supreeth@mindtree.com','Supreeth@1234','9511095832',2,NULL),
 (113,'Keerthana','Keerthana@mindtree.com','Keerthana@1234','8165595777',2,NULL),
 (114,'Gautam','Gautam@mindtree.com','Gautam@1234','3211739625',1,NULL),
 (115,'Srinivas','Srinivas@mindtree.com','Srinivas@1234','2074831392',2,NULL),
 (116,'baylrusse3507','Bay.RUSS4287@mailinator.com','TqsENrg6$1A6g','8282548956',2,NULL),
 (117,'alfcamp7286','Alfr.CAMP5240@reallymymail.com','Nc7*#30k','9498340533',1,NULL),
 (118,'rosejoyner7306','Ro.JOYNER6048@mailinator.com','OYshOm*LT8GDS','4756862305',1,NULL),
 (119,'kirapaul6603','Ki.PA8908@monumentmail.com','q5nvCASv','2084367986',2,NULL),
 (120,'timotro5743','Tim.ROS6055@yopmail.com','z%LWoe1VZ','4587737926',1,NULL),
 (121,'renatys4558','Renata.TYSON7347@dispostable.com','oYfD^^iaHCPXFa','8451405275',2,NULL),
 (122,'koltfran3494','Kolt.FRANKLIN8521@monumentmail.com','0El&Aq4s4GG','8621856848',1,NULL),
 (123,'parbo1005','Paris.BO4834@dispostable.com','bfUFKY8J','3219663424',2,NULL),
 (124,'alamor9889','Ala.MOR6604@mailinator.com','B%QQhCy@Oey','5711569684',1,NULL),
 (125,'crisvarga2058','Cristin.VARGA4389@monumentmail.com','kYZ*U0Bq','9734277602',2,NULL),
 (126,'hayashl6043','Hayde.ASHLE6104@yopmail.com','pFOpQUA!','3258299611',1,NULL),
 (127,'jennifbarron4822','Jennifer.BARR5946@monumentmail.com','3#nf$##Ctjw2','6025122047',2,NULL),
 (128,'harvewrigh3112','Har.WRI5996@mailinator.com','DPm$GVQo','8474168509',2,NULL),
 (129,'emercle4204','Eme.CLEMON7729@reallymymail.com','sbzdH3Yd%w42b','7756632919',2,NULL),
 (130,'brandomacias7698','Bra.MAC5311@monumentmail.com','959aXwE1Avx','8069385511',1,NULL),
 (131,'rubbridg5212','Ruby.BRIDG6592@yopmail.com','KVL5DmJ^!#Ex','9151045810',2,NULL),
 (132,'orlandonort8016','Orlando.NORTON8147@reallymymail.com','BR1K^f0FB38','5201481978',1,NULL),
 (133,'sethtod6806','Seth.TODD7672@mailinator.com','pvdCf*mSdUtHd3i','9804455133',1,NULL),
 (134,'nadialaw7275','Nad.LAWSON6925@monumentmail.com','rA#M4jEfub#@','2094763660',1,NULL),
 (135,'kolesno9932','Kole.SNO4920@yopmail.com','6F9dTduUTK!68','7879643392',2,NULL),
 (136,'ezetyso6653','Eze.TY1868@yopmail.com','UuIuSidgcu1V2k','3379792175',1,NULL),
 (137,'leilaherr3961','Leil.HERRER5037@reallymymail.com','!P&W9wuJFRkVozh','5624684180',2,NULL),
 (138,'jonamorrow5876','Jo.MORR6619@dispostable.com','q6qz^nr@J%','8601154926',2,NULL),
 (139,'teagabr8765','Tea.BROC2843@yopmail.com','8NkIITJo4s%Q4fD','9069030839',2,NULL),
 (140,'angriffit2584','Aniy.GRIFFIT4762@yopmail.com','$@HCq@y9','6076965386',2,NULL),
 (141,'albeken6421','Albert.KE8384@dispostable.com','YNWxghJiC','8507264993',2,NULL),
 (142,'toribarnett9409','To.BARNETT5173@reallymymail.com','exQ7Ue&g^l','3162753965',1,NULL),
 (143,'kristibento4322','Kris.BENTON2666@monumentmail.com','j#Jw$9Ez%','4025393743',2,NULL),
 (144,'anniespi7383','Anni.ESPINO1660@dispostable.com','nhVsHoAl','4708804675',2,NULL),
 (145,'kyahul8516','Kya.HUL2051@mailinator.com','AR%*Oeb41k','9165669178',1,NULL),
 (146,'theogol8863','Theo.GOLDEN8833@monumentmail.com','q5eNE930V8EKLb','2019632144',2,NULL),
 (147,'tristenfow3308','Tristen.FOWLER5745@reallymymail.com','Cr!ZCnqW$4^#J9G','9397380855',2,NULL),
 (148,'marallison6677','Marco.ALLI7883@reallymymail.com','U8lZLcVo','3611121439',1,NULL),
 (149,'akatk2820','Ak.ATKI3811@mailinator.com','aq%eRSulKj!TbG','7737461888',2,NULL),
 (150,'tylran9858','Tyler.RAND2303@mailinator.com','p7o$*KPt2&EuWw','3012368440',1,NULL),
 (151,'laneyca3260','La.CA6332@dispostable.com','7fbRSFA7f','7183483173',2,NULL),
 (152,'coho5143','Cole.HO8334@monumentmail.com','huCW&bN99KhTY','8125136211',1,NULL),
 (153,'hudschneide9333','Hudso.SCHNE3990@mailinator.com','7s4Iim!YMJ04Z8','9703972657',1,NULL),
 (154,'aincort6582','Ain.CORTE9830@dispostable.com','6l*!Mc7LHTIVY4','2064802883',2,NULL),
 (155,'riverosario5223','Riv.ROS2124@reallymymail.com','pIVD&6^9Wr','9809942100',1,NULL),
 (156,'reethorn9070','Ree.THORNTON6547@yopmail.com','rp3m!6TeqRNM','5026572211',2,NULL),
 (157,'harloschult4631','Harlow.SCHULTZ2922@mailinator.com','3Otm^PakQa','2534803492',1,NULL),
 (158,'breval3463','Brenn.VALDE6892@mailinator.com','%xHOh$aKw','8028713626',1,NULL),
 (159,'leonidpa2937','Leonidas.PAYN1552@reallymymail.com','Nng2RVYFZYeSFi','5154827110',1,NULL),
 (160,'alldavi8934','All.DA1137@dispostable.com','#8YdnZEzgzaq','9128389325',1,NULL),
 (161,'miljor3729','Mila.JORD1920@dispostable.com','%t^Y@SOUrc$oLHM','6158654740',1,NULL),
 (162,'keonst3462','Keon.STE4560@dispostable.com','ZoyDA9p^mf','5049083233',1,NULL),
 (163,'tryszam7209','Tryst.ZAMOR5721@dispostable.com','GXmM2n5TXJ@8Vv','4756336817',1,NULL),
 (164,'gahea5954','Gai.HEA2833@mailinator.com','KoO^JAJ0VFGPnRG','2565128774',1,NULL),
 (165,'sterlijame4059','Sterl.JAME6381@yopmail.com','Pp8C@*DhKsuW4','2699379056',1,NULL),
 (166,'zacherwa3871','Zacher.WA9278@yopmail.com','cqpdrmOrn','3141939147',2,NULL),
 (167,'urwall4396','Uria.WALLACE7574@mailinator.com','vbFOGlgsBdRXSsy','3367473943',2,NULL),
 (168,'louki8248','Lo.KIR3689@yopmail.com','3inW#dr%RPqWty','9851859726',2,NULL),
 (169,'treha9513','Tren.HAH6043@mailinator.com','OjxMb77hP9','4062691525',1,NULL),
 (170,'lylaluna8149','Ly.LUN7824@reallymymail.com','fXwE2bvxlvoVY6','8474590054',1,NULL),
 (171,'brenbarr7872','Brenn.BARRETT2964@yopmail.com','SkQFt1^9Boo','6196775529',1,NULL),
 (172,'caburt1897','Car.BUR4258@monumentmail.com','dFjlfA@mm%PT','7625206392',2,NULL),
 (173,'joanwit2965','Joanna.WI7705@mailinator.com','perPUdQZah','4695173168',1,NULL),
 (174,'valentinhopper9615','Valentino.HOPPE6489@yopmail.com','NFucUYS%!','8579161652',1,NULL),
 (175,'karsydan7929','Kar.DAN7767@yopmail.com','JdO1zGgyaEG','5636196165',2,NULL),
 (176,'jensem2786','Jensen.MA3177@dispostable.com','VCMWLE1Qr5','3182961798',2,NULL),
 (177,'brynnso2158','Br.SO1704@yopmail.com','Z$fsp2S*V#S&f','8564401586',1,NULL),
 (178,'brethomas1755','Bret.THOM7953@mailinator.com','Z9qC*5CUzE','6461535454',1,NULL),
 (179,'alebl3897','Aleen.BLAK3347@yopmail.com','rOQD#rQu!Uq','3375978453',1,NULL),
 (180,'howardalsto4060','Howard.ALSTO2161@dispostable.com','Z&5lheFiC!qz','9376057755',1,NULL),
 (181,'jamclean2552','Jad.MCLEA5907@yopmail.com','Ado4DM0UL','3074651051',2,NULL),
 (182,'kasspat4215','Kassidy.PATE2672@mailinator.com','XdWUljLWrxiI','9734273525',2,NULL),
 (183,'shanegib6639','Shane.GIB6890@monumentmail.com','BPHEYj5#S6','4127161792',1,NULL),
 (184,'russelamb5741','Russe.LAM9036@reallymymail.com','X1saohD2','8601122031',1,NULL),
 (185,'jamarhort6754','Jama.HORTO3604@yopmail.com','3@1bYAyBM*7','4699638072',1,NULL),
 (186,'kassidcol8110','Kassid.COLE1106@dispostable.com','sE#3cCo61L','4251637213',2,NULL),
 (187,'thbro1003','Th.BRO6488@yopmail.com','M02S6c^1wMvf2','2483242754',1,NULL),
 (188,'nelsonhart2367','Nel.HA9089@dispostable.com','!CU*Rlik^','9514769173',2,NULL),
 (189,'markvalenz6007','Mark.VALENZUEL4018@mailinator.com','qh!byWba0JYf%!','9384183543',2,NULL),
 (190,'joaev6209','Joan.EVAN1387@dispostable.com','o0RG$*m6!MS','2179594367',2,NULL),
 (191,'grawebs8906','Gr.WEBSTER6730@dispostable.com','psk#d3nVPfY*','9066316075',2,NULL),
 (192,'greysolivingston1468','Greyson.LIVIN3644@monumentmail.com','pLDokZ40','6178413954',2,NULL),
 (193,'marianware4221','Mariann.WARE9396@monumentmail.com','YPc5ryHNgrq','9548658329',1,NULL),
 (194,'doperr1026','Donte.PERRY2604@yopmail.com','S6a5NZjI*o&Fi0H','8487007899',1,NULL),
 (195,'jermainleblanc4556','Jerma.LEB3067@yopmail.com','&qRrdDh5n0^fJ','3606461640',1,NULL),
 (196,'savanforb7869','Sav.FOR3941@monumentmail.com','kyVUUD#IvheT7o6','5024854845',1,NULL),
 (197,'johagregory3164','Johann.GREGO3330@yopmail.com','UdRIDxRA','4424186291',1,NULL),
 (198,'armandohammond4263','Armando.HAMMOND7706@monumentmail.com','@$3L%%S#','5751296883',2,NULL),
 (199,'ihow2275','I.HOW2492@mailinator.com','K#Q7yahMTs','4841990329',2,NULL),
 (200,'carmoss3250','Car.MOS5306@reallymymail.com','ov4&zofUdLp','4705039987',2,NULL),
 (201,'abc','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (202,'Punith','gjmptwnpg','hi@Punith.me','123456789',NULL,NULL),
 (203,'Bhagya','gjmptwnpg','hi@Punith.me','123456789',NULL,NULL),
 (204,'abcTest','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (205,'abcTest','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (206,'abcTest','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (207,'abcTest','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (208,'abcTest1','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (209,'abc','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (210,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (211,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (212,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (213,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (214,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (215,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (216,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (217,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (218,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (219,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (220,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (221,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (222,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (223,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (224,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (225,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (226,'Bhagya-Pasupureddy','1234567','bhagya@mindtree.com','123456789',NULL,NULL),
 (227,'abc','123456789','abcdef@gmail.com','123456789',NULL,NULL),
 (228,'abc','123456789','abcdef@gmail.com','123456789',NULL,NULL);
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;


--
-- Definition of table `userwishlist`
--

DROP TABLE IF EXISTS `userwishlist`;
CREATE TABLE `userwishlist` (
  `wishlistId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned DEFAULT NULL,
  `courseId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wishlistId`),
  KEY `userId_fk` (`userId`),
  KEY `courseId_FK` (`courseId`),
  CONSTRAINT `courseId_FK` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userId_fk` FOREIGN KEY (`userId`) REFERENCES `userprofile` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userwishlist`
--

/*!40000 ALTER TABLE `userwishlist` DISABLE KEYS */;
INSERT INTO `userwishlist` (`wishlistId`,`userId`,`courseId`) VALUES 
 (1,182,106),
 (2,182,78),
 (3,151,44),
 (4,161,72),
 (5,141,41),
 (6,169,24),
 (7,195,58),
 (8,126,81),
 (9,149,97),
 (10,156,79),
 (11,197,11),
 (12,185,67),
 (13,117,27),
 (14,125,42),
 (15,188,104),
 (16,180,99),
 (17,121,65),
 (18,173,75),
 (19,121,109),
 (20,174,31),
 (21,134,40),
 (22,133,66),
 (23,145,30),
 (24,157,101),
 (25,196,50),
 (26,158,35),
 (27,142,20),
 (28,173,14),
 (29,180,86),
 (30,111,94),
 (31,194,17),
 (32,117,6),
 (33,142,98),
 (34,160,9),
 (35,178,23),
 (36,112,70),
 (37,134,8),
 (38,177,85),
 (39,197,43),
 (40,176,25),
 (41,141,104),
 (42,184,108),
 (43,196,3),
 (44,150,25),
 (45,164,11),
 (46,191,62),
 (47,120,17),
 (48,116,12),
 (49,154,47),
 (50,145,81);
/*!40000 ALTER TABLE `userwishlist` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
