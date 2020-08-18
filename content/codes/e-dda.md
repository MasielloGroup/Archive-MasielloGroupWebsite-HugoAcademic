---
title: e-DDA
summary: source code to download e-DDA
date: "2020-08-17T00:00:00Z"

reading_time: false  # Show estimated reading time?
share: false  # Show social sharing links?
profile: false  # Show author profile?
comments: false  # Show comments?

# Optional header image (relative to `static/img/` folder).
header:
  caption: ""
  image: ""
---

This page contains the source code and installation instructions for the electron-driven discrete-dipole approximation (e-DDA) 2.0 code for simulating both electron energy-loss spectroscopy (EELS) and cathodoluminescence (CL) experiments.  Version 2.0 computes EELS and (angle-resolved) CL for both aloof and internal geometries and allows for target rotation within the same code.  e-DDA v2.0 is built upon  [Draine’s DDSCAT v7.1](http://www.astro.princeton.edu/~draine/DDSCAT.7.1.html)  and fixes several bugs related to unit conversion to cgs units.  We also make available our JobLauncher 1.0 code, which is designed to improve calculation speed and efficiency by parallelizing the e-DDA across a cluster.  


e-DDA is gratis, subject to the GNU General Public License. You may copy, distribute, and/or modify the software identified as under this agreement. If you distribute copies of this software, you must give the recipients all the rights that you have.


If you use e-DDA then we request that you cite the following paper that explains its implementation:

Nicholas W. Bigelow, Alex Vaschillo, Vighter Iberi, Jon P. Camden, and David J. Masiello
 [Characterization of the Electron- and Photon-Driven Plasmonic Excitations of Metal Nanorods](http://pubs.acs.org/doi/abs/10.1021/nn302980u) 
ACS Nano 6, 7497 (2012).

If you use e-DDA to compute cathodoluminescence then we request that you additionally cite the following paper that explains its implementation:

Nicholas W. Bigelow, Alex Vaschillo, Jon P. Camden, and David J. Masiello
 [Signatures of Fano Interferences in the Electron Energy-Loss Spectroscopy and Cathodoluminescence of Symmetry-Broken Nanorod Dimers](http://pubs.acs.org/doi/abs/10.1021/nn401161n) 
ACS Nano 7, 4511 (2013).



You may install e-DDA and JobLauncher either by using  [install.py](http://faculty.washington.edu/masiello/Masiello_Group_Website/e-DDA_files/install.py)  or manually by following these instructions:

EELS simulations via e-DDA:

You may download all e-DDA files by clicking  [edda2.0.tar.gz](http://faculty.washington.edu/masiello/Masiello_Group_Website/e-DDA_files/edda2.0.tar.gz) .  To install the code simply  [download DDSCAT v7.1](http://www.astro.princeton.edu/~draine/DDSCAT.7.1.html)  and move the e-DDA *.f90 files and Makefile into the DDSCAT /src directory.  Compile and run the code exactly as you would with DDSCAT.  The only difference is that you must use the supplied ddscat.par file, which contains new information such as the incident electron’s path trajectory and kinetic energy.

JobLauncher:

For your convenience we have also provided a program that will distribute e-DDA calculations across a computer cluster.  Download the source code and documentation from  [here](http://faculty.washington.edu/masiello/Masiello_Group_Website/e-DDA_files/JobLauncher1.0.zip) , compile with the command “make all”, and read the documentation to learn about usage.



Please email us if you have any questions.



This material is based upon work supported by the National Science Foundation under Grant Number CHE-1253775.  Any opinions, findings, and conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the National Science Foundation.

