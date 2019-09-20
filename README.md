This repository provides 2 packages:

 - SDK for Keyclic API in Dart
 - SDK for Keyclic API in Javascript
 
### Javascript
Note about Javascript.

After built, [babel](https://babeljs.io/) parses source code to render Javascript compatible with old browsers.

BrowserList *(with configuration: > 0.5%, last 1 ie versions, last 1 Safari versions, not dead)* is used to define which browsers will be compatible.
Check the [list of browsers](https://browserl.ist/?q=%3E+0.5%25%2C+last+1+ie+versions%2C+last+1+Safari+versions%2C+not+dead) that are compatible with the Javascript SDK.

Javascript package uses [fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API) to make calls to Keyclic API.
If you are using this SDK with a browser [without fetch API](https://caniuse.com/#feat=fetch) , don't forget to polyfill it. A good polyfill: github [fetch](https://github.com/github/fetch). 

### Build

To build SDKs (docker is required).

Building uses Swagger [Codegen](https://github.com/swagger-api/swagger-codegen) to generate source code of Javascript and Dart. 

```bash
bin/app generate
```

After generation documentations can be found here.

[javascript-es6 documentation](javascript-es6/README.md)

[dart documentation](dart/README.md)
