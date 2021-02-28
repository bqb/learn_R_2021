# learn_R_2021
One must start somewhere, and this is that place

Today things literally came together well, with a big CUDA card in the freshly reimaged Ubuntu 20.04.2 dev environment 'ubu200420' and its companion server p1331 providing PostgreSQL 13 + PostGIS 3.1 and NFS storage mounts for attempts to coordinate multiple containers.


Ubuntu runs on a 4-thread i3-8100 at 3.6 GHz with virtualization enabled, 24 GB DDR4 at 2100 MHz, and now a GTX 1650 Super with 1280 CUDA cores.  A 500 GB SSD holds system and a 128 GB NVMe M2 is also available, but not bootable with the Gigabye Z370 system board.  After a night's rest I realized that for the first time, the Ubuntu workstation had graphics primacy over the Windows workstation, and I swapped the video cabling to the Asus/Ancor PB328 2K monitor.  Now ubu has the HDMI cable running 2560x1440 and GRN has the DP->DVI cable  and GTX 950 now running HD 1920x1080.  Interestingly, it was Atom that drove the swap---as there's seldom a need for fast-refresh gaming 3D and the monitor tops out at 60 Hz in any case.

Enviro-wise, just last night got updated with pgAdmin 4 5.0, and last weekend got QGIS 3.18 Zürich.   Atom has already got me using the Compose key, with motivation from QGIS!  Now my Atom has been augmented by both Python and R as configured with conda.   Just removed Rstudio from Favorites, and will likely not complete the install of PyCharm up here on ubu.  

Kudos to this Jeff Stafford for blogging in a way that inspired a commitment to Atom as a unified environment for R and Python both without excess weight.
https://jstaf.github.io/2018/03/25/atom-ide.html
