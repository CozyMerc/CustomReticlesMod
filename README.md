# Custom Reticles Mod
Adds a vmt framework for FRONT/REAR reticles 
## Featured sights:
- HCOG2 (2x) [FRONT/REAR]
- HOLOSIGHT_R2 (1.5x) [FRONT/REAR]
- ACGS_SIGHT (3x) [FRONT/REAR]
- AOG_R1 (2x) [FRONT/REAR]
- AOG_R2 (4x) [FRONT]
- CRO_SIGHT (1.5/2x)  [FRONT]
- R201_FRONT (2x)  [FRONT]

TODO:
- improve readme.md
- add gifs illustrating installation process for blender
- add images on how to get most accurate attachment points
- HCOG_R1
- ORACLE_SIGHT
- DCOM
- WONYEON 
- TALON
- Various Iron Sights

## Features
- 8 different front reticle styles
![styles](https://user-images.githubusercontent.com/88903493/212467779-d36999b8-cd9e-4a9c-b98c-58db5b04a5b2.gif)
- fully customisable colors
![colors](https://user-images.githubusercontent.com/88903493/212468009-3b495903-6dbc-4d11-bcbd-6e5b63c6a235.gif)
- scalable reticle
![scale](https://user-images.githubusercontent.com/88903493/212468200-88c8dfbb-b9bd-4f74-ac5c-a120ed2aec63.gif)
- reticle will be in sync with the crosshair/ center of the screen
 ![center](https://user-images.githubusercontent.com/88903493/212468636-0b807f09-9a61-46a6-b37c-d89558c5bc20.gif)
- rgb mode (because why not :P)
![hcog_rgb_gif](https://user-images.githubusercontent.com/88903493/210629404-69eb1338-420f-49bd-9be4-a579f4abc06c.gif)

## How to implement crm in your mdls
Firstly download either the featured .blend file or individual .smd

All of the sights are built on r201 skeleton and if you copy and match the position of the scope in your mdl, the attachment points for default scopes will work fine.

In case you are planning to use crf on a model with different scope postioning etc. you'll have to add $attachment points for every sight you plan on using. 
To do that you'll need the distance between the center of the reticle plane and a bone that it's attached to.

In blender you do that by grabing the position of the center vertex and comparing it with the position of the head of the bone the plane is parented to.

DO NOT rescale the vmt planes UNLESS you plan on creating your own vmts as rescaling butchers holo_offset scalars.
