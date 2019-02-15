# Using-Javascript-in-iOS
A sample project for accessing javascript functions in a swift project using JavascriptCore framework. 

A sample project for accessing javascript functions in a swift project using JavascriptCore framework.

This project uses JavascriptCore iOS Framework. The JavaScriptCore framework provides access to WebKit’s JavaScript engine.

JSVirtualMachine 
 - The JavascriptCore framework uses a virtual machine using JSVirtualMachine class which executes the javascript code.

JSContext 
 - A JSConext instance is required to execute the javascript code.

JSValue
 - A JSValue is a value returned by the javascript function which needs to be converted to native object.

Custom Objects 
 - The native encoder and decoder can be used to decode custom objects from JSValue. You can find the usage in the project.
