# debian-12-preseed-casaos

Main objective of this repo is to easily create a debian 12 (Bookworm) instance, and add a post-installation with casaos.

This project is heavily inspired from [https://github.com/Tontonjo/debian_preseed] and [https://github.com/Tontonjo/casaos] projects, thanks for him.

## Prerequisites

* Download debian12.iso from official sources

## Instructions

1/ Edit preseed.cfg and change [PUT_YOUR_IP_HERE] into your local ip address (where you've cloned this repo)
2/ Boot your VM/Hardware with the iso
3/ Go to Advanced Options > Automated Install
4/ input the location of your preseed.cfg. In my case i like to fire a quick `python -m http.server 7777` from the active directory where the preseed.cfg is available.
   Then point to `http://mylocalip:7777/preseed.cfg`

5/ Take a cup of tea and wait for the installation to finish.

Enjoy.
