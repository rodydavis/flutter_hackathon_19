---

# Flutter Task Manager

## by Rody Davis

<!--
- Using Provider
- About Me


md2gslides slides.md
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

* Flutter doesn’t use OEM widgets  so it allows you to truly make your own brand and not just rely on material design and cupertino style themes
* You can make high quality apps that feel right at home on android and ios

-->

---

# Stateful Widget

``` dart
class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  // ···
}
```

<!--
- Flutter is made up of widget and everything is a widget.
	* Show Flutter layers
	* There are statelesswidget and statefulwidget that are the two main widgets you use
		* Stateless will rebuild every-time the data changes
		* Stateful will hold state and only rebuild when you call setstate 
-->
--- 

# Stateless Widget

``` dart

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```

<!-- 
- Rebuilds Automatically 
-->

---

![](https://github.com/AppleEducate/flutter_hackathon_19/blob/master/assets/slide_images/widgets.png?raw=true){.background}

---

# State Management

- Bloc
- Redux
- Scoped Model
- Provider
- MobX
- RxDart
- setState
- Custom

<!-- 

- There are so many options
- All depends on the type of application
- Combination (Provider and Bloc, Bloc and Reduc (ReBloc))

* Since flutter was created with the modern mobile in mind, especially with how powerful phones have gotten, there are many options when it comes to state management
	* Bloc - AngularDart and Flutter (Google)
	* Provider - Community (Recommended) => Scoped Model
	* Redux
	* Other (Build your own) 
-->

---

# Set State

## Out of the Box

``` dart
// -- Default Value --
int _counter = 0;


// -- Update Value --
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}

// -- Display Value --
Text('$_counter'),
```

<!-- 
- Simple Applications
- Logic with the View
- Hard to Scale -->

---

![](https://github.com/AppleEducate/flutter_hackathon_19/blob/master/assets/slide_images/dart_pub.png?raw=true){.background}

<!-- 
* Flutter has a really strong and vibrant community and is open sourced
	* There is a place called dart pub where you upload packages and can download ones that others have created
	* Packages can be pure dart or contain platform channels for ios and android to use native swift and kotlin -->

---

# Provider

## Recommended by Flutter Team

- Separate Business Logic
- Rebuild on changes
- Scoped Model
- Created by Remi Rousselet

<!-- 
Application from the community to provide a simple but powerful alternative
-->

---

# Provider Example

``` dart
Provider<String>.value(
  value: 'Hello World',
  child: Consumer<String>(
    builder: (context, value, child) => Text(value),
  ),
);
```

---

# Multiple Models

``` dart
MultiProvider(
  providers: [
    Provider<Foo>.value(value: foo),
    Provider<Bar>.value(value: bar),
    Provider<Baz>.value(value: baz),
  ],
  child: someWidget,
);
```

---

# Demo {.big}

TODO Application using Provider

<!-- 
* Example (CRUD Application)
	* Show Counter example
	* Add Provider Package
	* Hot reload
	* VSCode extensions
	* Build app with set setstate
	* Add Change Notifer Class
	* Migrate to provider
	* Local Storage for Fun (Save to Disk, JSON)  
-->

---

# Conclusion

## Example: https://github.com/AppleEducate/flutter_hackathon_19

- Twitter -> @RodyDavis
- Github -> @AppleEducate
- Website -> rodydavis.com

<!--    
* Flutter is very powerful and fun to use
* More time on the code and less boilderplate
* Self describing documentation (Keep going deeper)
* Example on Github
* Share example on github (Branches for setState and provider)
* Any Questions?  
-->
