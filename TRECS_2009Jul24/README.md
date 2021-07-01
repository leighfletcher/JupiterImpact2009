Repository for Gemini/TRECS Data used to study the 2009 Jupiter impact.

**L.N. Fletcher, Orton, G.S., Lisse, C.M., Edwards, M.L., de Pater, I., Yanamandra-Fisher, P.A., Fisher, B.M., (2011). The Aftermath of the July 2009 Impact on Jupiter: Ammonia, Temperatures and Particulates from Gemini Thermal-IR Spectroscopy, Icarus 211, 568-586** (http://dx.doi.org/10.1016/j.icarus.2010.09.012)

Two directories are provided, one for the `Nband` and one for the `Qband`, and can be used to reproduce Fig. 2 of the above publication.  Note that the impact scar was imaged six times in Q and seven times in N as it transited the disc, resulting in views at different emission angles.  We therefore provide all six/seven calibrated data cubes, six differnent longitude assignments, and spectral files (`*.spx`) that have six different viewing geometries for every longitude.

The directory structure is as follows:

* `caldata/` Contains FITS files with the calibrated spectral data in W/cm2/micron, which can be converted to spectral radiance by dividing by the solid angle 0.09 arcsec-squared.

* `longitudes/` contains the longitude assignment for each spectrum recorded in the `caldata` fits files.

* `radiance_ratios/` Text files containing the ratio of the impact brightness enhancement to the background, as described in the publication above.

* `spxfiles/`  Contains input files for NEMESIS spectral inversions.  These spectra are extracted directly from the `caldata` cubes without applying the radiance ratios to CIRS spectra.

* `spxfiles_cirs/` Here we applied the radiance ratios to a model CIRS spectrum to enable the analysis of ammonia and aerosols as shown in the publication above.

* `figures/` Contains EPS files used to generate Fig. 2 of the paper.  Fig. 2 was for only one of the six longitude observations, here we include all six/seven.
