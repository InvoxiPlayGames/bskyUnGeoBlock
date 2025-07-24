# bskyUnGeoBlock

A very basic web browser extension for disabling geo-block moderation and age
verification on Bluesky's web app.

## Important

**This extension is made for people who are 18 or over. Please do not install
the extension if you are not an adult.**

This extension is a temporary mitigation for a much deeper problem with the
UK's Online Safety Act.

For those who are UK citizens, sign the
[petition to the UK parliament](https://petition.parliament.uk/petitions/722903)
to attempt to have the Online Safety Act repealed or reconsidered, and contact
[your local MP](https://members.parliament.uk/members/Commons) to express your
concerns regarding the Act stripping away your privacy, safety and freedoms.

## Installation

### Mozilla Firefox

1. Download the extension's XPI file from [the releases page](https://github.com/InvoxiPlayGames/bskyUnGeoBlock/releases).
2. Firefox should prompt you if you want to install the extension.

If Firefox doesn't ask you if you want to install the extension,

1. Open your browser's "Extensions" page.
2. Click "Install Add-on from File..."
3. Select the XPI file you downloaded in step 1.

### Google Chrome, Microsoft Edge, Vivaldi, etc (Chromiums)

The extension isn't currently available on any web store, it must be installed
manually via developer mode.

1. Download the extension's ZIP file from [the releases page](https://github.com/InvoxiPlayGames/bskyUnGeoBlock/releases).
2. Extract the ZIP file somewhere on your computer.
3. Open your browser's "Extensions" page.
4. Enable the "Developer mode" toggle.
5. Click the new "Load unpacked" button
6. Select the folder you extracted the ZIP file to in step 2.

### Mozilla Firefox for Android

You must install the extension manually via developer mode.

1. Download the extension's XPI file from [the releases page](https://github.com/InvoxiPlayGames/bskyUnGeoBlock/releases).
2. Go to Firefox's Settings
3. Enable Developer mode by going to "About Firefox" and tapping the logo 5
   times.
4. Go back and then select "Install add-on from file"
5. Select the XPI file you downloaded in step 1.

### Apple Safari

The extension does not support Safari.

## Implementation

The implementation of this extension is done entirely by declarativeNetRequest
in Manifest V3. It redirects `bsky.app`'s country code check API
(`bsky.app/ipcc`) to return that the user is in the US and that country has no
age verification requirement, and for extra measure it redirects Bluesky
Mycosphere PDSes (`*.bsky.network`) "`app.bsky.unspecced.getAgeAssuranceState`"
XRPC endpoint to always return that age verification has been assured.

No JavaScript code is included in the extension, everything is declared in the
manifest and DNR rule files. (This may change in the future.)
