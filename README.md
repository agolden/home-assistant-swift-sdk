# home-assistant-swift-sdk

This open-source library allows you to interact with a Home Assistant instance in your Swift-based (e.g., iOS, macOS, etc.) app.

It is currently in a **BETA** state and is very much a work-in-progress.

## Running Tests

You must first install [Docker](https://docs.docker.com/desktop/mac/install/) to successfully run the Home Assistant API simulator on which tests in this library depend. 

Please note that if you are running tests within XCode, you must first manually launch the API simulator by executing `make start-sim`. Unfortunately this is necessary because Xcode does not (yet?) support test pre-/post-actions for packages

Once your testing is completed, kill the simulator by executing  `make stop-sim`.

Or, bypass Xcode altogether and use what the build system uses: `make test`.
