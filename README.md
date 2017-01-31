# Perfect-Authentication Demo

[![Perfect logo](http://www.perfect.org/github/Perfect_GH_header_854.jpg)](http://perfect.org/get-involved.html)

[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg)](https://github.com/PerfectlySoft/Perfect)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_2_Git.jpg)](https://gitter.im/PerfectlySoft/Perfect)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg)](https://twitter.com/perfectlysoft)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg)](http://perfect.ly)


[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms OS X | Linux](https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![License Apache](https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat)](http://perfect.org/licensing.html)
[![Twitter](https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat)](http://twitter.com/PerfectlySoft)
[![Join the chat at https://gitter.im/PerfectlySoft/Perfect](https://img.shields.io/badge/Gitter-Join%20Chat-brightgreen.svg)](https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Slack Status](http://perfect.ly/badge.svg)](http://perfect.ly) [![GitHub version](https://badge.fury.io/gh/PerfectlySoft%2FPerfect-CURL.svg)](https://badge.fury.io/gh/PerfectlySoft%2FPerfect-CURL)

## Demonstrating the OAuth2 Library for Perfect


This project provides [OAuth2](https://oauth.net/2/) demo of the [Perfect Authentication](https://github.com/PerfectlySoft/Perfect-Authentication) libraries and select OAuth2 provider drivers - Facebook, Google, GitHub.

Full documentation can be found at [http://www.perfect.org/docs/OAuth2.html](http://www.perfect.org/docs/OAuth2.html)

This package builds with Swift Package Manager and is part of the [Perfect](https://github.com/PerfectlySoft/Perfect) project. It was written to be stand-alone and so does not require PerfectLib or any other components.

Ensure you have installed and activated the latest Swift 3.0 tool chain.

## Setup

Download this repo, clone it, or import it using [Perfect Assistant](https://www.perfect.org/en/assistant/). Build, configure the system with your AppID's and secrets, and run.

```
git clone https://github.com/PerfectExamples/Perfect-Authentication-Demo
cd Perfect-Authentication-Demo
swift build
.build/debug/Perfect-Authentication-Demo
```

Alternatively, build the Xcode project with `swift package generate-xcodeproj`.

If you choose to generate an Xcode Project, you MUST change to the executable target AND set the custom working directory to the project directory for its scheme in order for the web routes to work properly.



## Configuration

Each provider needs an "appid", also known as a "key", and a "secret". These are usually generated by the OAuth Host, such as Facebook, GitHub and Google developer consoles. These values, as well as an "endpointAfterAuth" and "redirectAfterAuth" value must be set for each provider you wish to use. If you leave any unset, the authentication will fail.

These settings are configured by removing the ".default" extension from the "ApplicationConfiguration.json.default" file in the "config" directory, then populating the values as needed.

The default file looks like this:

``` swift
{
	"facebookAppID": "---",
	"facebookSecret": "---",
	"facebookEndpointAfterAuth": "http://localhost:8181/auth/response/facebook",
	"facebookRedirectAfterAuth":"http://localhost:8181/",

	"githubKey": "---",
	"githubSecret": "---",
	"githubEndpointAfterAuth": "http://localhost:8181/auth/response/github",
	"githubRedirectAfterAuth":"http://localhost:8181/",

	"googleKey": "---",
	"googleSecret": "---",
	"googleEndpointAfterAuth": "http://localhost:8181/auth/response/google",
	"googleRedirectAfterAuth":"http://localhost:8181/"
}
```

Replace the `---` values with those from your own accounts.

## Running

Once the demo has been configured, it can be run from the command line, or from Xcode.

It can then be accessed from a web browser at `http://localhost:8181`.

The first page you will see will have the following:

```
SessionID: <<SessionID>>

Login Type:

UserID:

UserName:

Picture:

AccessToken:
```

These values however will be populated upon login with one of the providers via the buttons.

Logging out will terminate the session, and start a new session without any information gained from a login with a provider.

Note that this demo uses the "MemorySessions" driver, so terminating the demo and restarting it will delete all existing sessions.

## Issues

We are transitioning to using JIRA for all bugs and support related issues, therefore the GitHub issues has been disabled.

If you find a mistake, bug, or any other helpful suggestion you'd like to make on the docs please head over to [http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1) and raise it.

A comprehensive list of open issues can be found at [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)


## Further Information
For more information on the Perfect project, please visit [perfect.org](http://perfect.org).
