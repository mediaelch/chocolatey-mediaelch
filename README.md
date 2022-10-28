## IMPORTANT - THIS REPO IS DEPRECATED!

A new repository has been created that will *automatically* release the Chocolatey package for MediaElch and publish it to chocolatey.org!  Once a version newer than **2.8.14** is released, this repository will be obsolete.  If there are any necessary changes (aside from releasing a new version of MediaElch), please use the following repository for pull requests or issues.

See https://github.com/sumo300/chocolatey-packages-au/tree/master/mediaelch

## MediaElch Chocolatey Package

This is the code I use to publish the MediaElch package to Chocolatey. 

 1. Follow the instructions on [chocolatey.org](http://chocolatey.org/) to setup Chocolatey
 2. Clone this repository and navigate to the folder in PowerShell
 3. `Build.ps1` to create the package
 4. `choco install mediaelch -Source "full-directory-path"` to install it locally

And you're done!

## MediaElch has been updated! Help!

When a new release of MediaElch is out in the wild, updating this package is easy:

 1. Fork this repository to your local environment
 2. Open `src\tools\chocolateyInstall.ps1` and update the URL as necessary
 3. Open `src\MediaElch.nuspec` and modify the following properties:
 
    1. version - Set to match the version of MediaElch
    2. releaseNotes - Set to URL of release notes for new version

 4. Commit the changes to a branch and push it to your fork
 5. Submit a pull request

After I merge the pull request, I'll publish a new release to Chocolatey so they can review it.
