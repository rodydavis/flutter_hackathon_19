 ---

# Flutter Task Manager

## by Rody Davis

<!--
- Using Provider
- About Me
-->

---

# What is Flutter

## Overview

- Mobile, Desktop, Web
- Mobile First
- Native Performance
- Animations and Pixel Perfect UI

<!--
- Who has heard of flutter?
- Who has created a project with flutter?
- Who has an app in production with flutter?

- Cross Platform SDK that enables you to build high quality apps on mobile, desktop and now web.
- This is a mobile first SDK and not a web wrapper like cordova or a VM like react native

-  Flutter uses Dart which runs in 2 modes (debug and release) (JIT and AOT)
    * In debug mode you get hot reload which allows you to hot swap code running on the device while maintaining state
    * In release mode it will compile to machine code and use tree shaking to be as small as possible.
-->

---

# Widgets Everywhere

![](/assets/slide_images/widgets.png)

<!-- 

* Flutter is made up of widget and everything is a widget.
	* Show Flutter layers
	* There are statelesswidget and statefulwidget that are the two main widgets you use
		* Stateless will rebuild every-time the data changes
		* Stateful will hold state and only rebuild when you call setstate
* Flutter doesn’t use OEM widgets  so it allows you to truly make your own brand and not just rely on material design and cupertino style themes
	* You can make high quality apps that feel right at home on android and ios
* Flutter has a really strong and vibrant community and is open sourced
	* There is a place called dart pub where you upload packages and can download ones that others have created
	* Packages can be pure dart or contain platform channels for ios and android to use native swift and kotlin
* Since flutter was created with the modern mobile in mind, especially with how powerful phones have gotten, there are many options when it comes to state management
	* Bloc - AngularDart and Flutter (Google)
	* Provider - Community (Recommended) => Scoped Model
	* Redux
	* Other (Build your own)
* Example (CRUD Application)
	* Show Counter example
	* Add Provider Package
	* Hot reload
	* VSCode extensions
	* Build app with set setstate
	* Add Change Notifer Class
	* Migrate to provider
	* Local Storage for Fun (Save to Disk, JSON)
* Conclusion
	* Flutter is very powerful and fun to use
	* More time on the code and less boilderplate
	* Self describing documentation (Keep going deeper)
	* Examples Github
	* Share example on github (Branches for setState and provider)
	* Any Questions? -->
