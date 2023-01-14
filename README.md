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

## How to implement crm in your mdls
Firstly download either the featured .blend file or individual .smd

All of the sights are built on r201 skeleton and if you copy and match the position of the scope in your mdl, the attachment points for default scopes will work fine.

In case you are planning to use crf on a model with different scope postioning etc. you'll have to add $attachment points for every sight you plan on using. 
To do that you'll need the distance between the center of the reticle plane and a bone that it's attached to.

In blender you do that by grabing the position of the center vertex and comparing it with the position of the head of the bone the plane is parented to.

DO NOT rescale the vmt planes UNLESS you plan on creating your own vmts as rescaling butchers holo_offset scalars.
