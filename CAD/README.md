# 3D printed models

We create 3D models in [OpenSCAD](https://www.openscad.org).

To render *.stl* files by [makefile](https://github.com/ExperimentalMakers/cloud-chamber-EM-1/blob/master/CAD/Makefile) you must install *stlsort*

```sudo pip install stlsort```


```make```

## Filename system

**1**001_Pbk.scad =>
The first digit means section of cloud chamber (casing)


1**0**01_Pbk.scad =>
The second digit means type of model (0 for *single part* or 1 for *assembly model*)


10**10**_Pbk.scad =>
The third digits means number of model


1001_**P**bk.scad =>
The first letter means type of material (P for *PLA*, A for *ABS*, G for *PET-G*)


1001_P**bk**.scad =>
The second letters means color of material (black, white, etc.)