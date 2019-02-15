# Using-Javascript-in-iOS
A sample project for accessing javascript functions in a swift project using JavascriptCore framework. 

But why? what is the need to use javascript in a swift project? 
Here is the real deal,
If you want to modify the behaviour of your app remotely, JavaScript code resides on a server and not locally in the app’s bundle. Just by modifying the JavaScript code in the server, imagine the amount of time you can minimise in the app publishing process. But this could turn into a disaster if you are not aware of what you are upto.
You can write all your business logic in javascript and you can import into different platforms which can be effective in reducing the development time. You can import and use a javascript file in iOS, Android and a number of other platforms offer this feasibility for the developers. 
You could possibly make your app more flexible and powerful.


This sample project will give you a basic idea on how javascript and swift can coexist and result you see is amazing. 

The JavaScriptCore framework provides access to WebKit’s JavaScript engine.

Following are some basic terminologies you must know before you begin,
JSVirtualMachine 
 - The JavascriptCore framework uses a virtual machine using JSVirtualMachine class which executes the javascript code.

JSContext 
 - A JSConext instance is required to execute the javascript code.

JSValue
 - A JSValue is a value returned by the javascript function which needs to be converted to native object.

Custom Objects 
 - The native encoder and decoder can be used to decode custom objects from JSValue. You can find the usage in the project.
