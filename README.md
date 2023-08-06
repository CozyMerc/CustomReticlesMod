# [CRF] Custom Reticles Mod (framework)
This mod adds support for choosing your own reticle color/style/size, as well as supports
Titanfall 1 recoil and sway correction.

## `.blend` files and structure
The mod requires theese criteria to be met:
- uv centre of the reticle must be in the same position as assigned `$attachment` point in the `.qc`.
- the camera position in ads must match the `z-axis` position to keep the reticle in the centre of the screen.
- the front/rear reticle planes **MUST NOT** be changed unless you've enabled `correct face attributes`/`live UV unwrap`.
- The `.qc` file needs additional bones (no animation changes required) and `$attachment` points for reticle ui to work properly.

In seperate folders there will be seperate `.blend` files collections with their own purpose.
- The "BASE" `.blend` file contains all of the supported optics with origin points representing distance between it and
- Seperate folders containing specific models are mostly to be used for animation fixes, as well as iron sights reticle ui as well as `.qc` settings (`$attachment`/`bone`/etc).
- The "r201_compiled" `.blend` file being a root file containing all unfinished/to be shipped assets (ie grips and lasers).

 
## "Base" project description and basic workflow for implementing crf.
### The Base project contains 3 items of interest:
- Front/Rear reticle ui to which sway/recoil correction, custom styles as well as scaling apply.

  "base" Front/Rear reticle ui for ease of transformation based on user needs (for custom sights only) **DO NOT SHIP**.
- Additional reticle ui (ACC) which aims to recreate unavaible `rui` effects (ie acgs scanlines)
- Base ptpov sight models w/ minor fixes (missing vertices etc.)
### Basic workflow for adding crf to your model:
- Append all of the desired sights into your model
- go to edit mode select and set 3d cursor position to "ja_ads_attachment"
- in **OBJECT** mode select and snap all of the appended assets into 3d cursor
- Parent all objects into the skeleton. (you can add new bones now by duplicating `ja_ads_attachment` or later by copying `$definebone` for specific sights in the `.qc`
- Reorganise assets into correct `collections` before exporting.
- Import all `$replacematerial` `$definebone` `$attachment` etc. commands
- disable rui via weapon scripts (mp_common vpk/scripts/weapons) by creating keyvalues.
## Images
## `.qc` commands
```
//BASE COMMANDS




//R201 SPECIFIC

//R101 SPECIFIC

//G2A4 SPECIFIC

//HEMLOK SPECIFIC

//FLATLINE SPECIFIC

//CAR SPECIFIC

//R97 SPECIFIC

//ALTERNATOR SPECIFIC

//VOLT SPECIFIC

//LSTAR SPECIFIC

//SPITFIRE SPECIFIC

//DOUBLETAKE SPECIFIC

//KRABER SPECIFIC

//LONGBOW SPECIFIC



```
