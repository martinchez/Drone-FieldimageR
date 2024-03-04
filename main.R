library(FIELDimageR)
library(FIELDimageR.Extra)
library(raster)
library(terra)
library(mapview)
library(sf)
library(stars)

#Loading the mosaics and visualizing
EX1 <- rast("EX1_RGB.tif")

#specifying CRS
crs(EX1) <- "EPSG:4326"  # Replace "EPSG:4326" with the correct CRS for your data

#Visualizing option-01
fieldView(EX1)

#Plotting an RGB image
plotRGB(EX1, r = 1, g = 2, b = 3)

#Cropping the image
aoi<-fieldView(EX1,editor = TRUE)
EX1<-crop(EX1,aoi) # For heavy images (large, high resolution, etc.) please use: fast.plot=T
fieldView(EX1)
