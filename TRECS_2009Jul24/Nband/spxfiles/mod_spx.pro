files=file_search('trecsN_*spx')
nfiles=n_elements(files)
for ifile=0,nfiles-1 do begin

openr,1,files[ifile]
zreadspx,1,fwhm,xlat,xlon,ngeom,nconv,nav,wave,angles,spec,error
close,1

;wave=wave-1.5
;error=0.05*spec

res=strsplit(files[ifile],'_',/extract)


nconvZ=nconv[ngeom-1]

ngeomZ=1
navZ=1
waveZ=wave[ngeom-1,*]
specZ=spec[ngeom-1,*]
errorZ=replicate(1e-9,nconvZ)
anglesZ=angles[*,ngeom-1]


outfile=strcompress('trecsN1geom_'+res[1],/remove_all)
openw,1,outfile
zwritespx,1,fwhm,xlat,xlon,ngeomZ,nconvZ,navZ,waveZ,anglesZ,specZ,errorZ
close,1
endfor

end
