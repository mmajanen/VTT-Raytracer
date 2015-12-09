# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug)
  OBJDIR     = obj/Debug
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/tracer.exe
  DEFINES   += -DDEBUG -DARMA_DONT_PRINT_ERRORS -DSAVERAYS
  INCLUDES  += -I../raytracer_src/Core -I../raytracer_src/Detectors -I../raytracer_src/json-parser -I../raytracer_src/MaterialProperties -I../raytracer_src/Materials -I../raytracer_src/Sources -I../raytracer_src/SurfaceProperties -I../raytracer_src/Core/Geometry -I../raytracer_src/json-parser/json -I/usr/include/hdf5/serial
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -Wall -W -std=c++11
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L.
  LDDEPS    +=
  LIBS      += $(LDDEPS) -larmadillo -lhdf5_serial -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR     = obj/Release
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/tracer.exe
  DEFINES   += -DNDEBUG -DARMA_DONT_PRINT_ERRORS -DARMA_NO_DEBUG -DSAVERAYS
  INCLUDES  += -I../raytracer_src/Core -I../raytracer_src/Detectors -I../raytracer_src/json-parser -I../raytracer_src/MaterialProperties -I../raytracer_src/Materials -I../raytracer_src/Sources -I../raytracer_src/SurfaceProperties -I../raytracer_src/Core/Geometry -I../raytracer_src/json-parser/json -I/usr/include/hdf5/serial
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O3 -msse -msse2 -std=c++11
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -s
  LDDEPS    +=
  LIBS      += $(LDDEPS) -larmadillo -lhdf5_serial -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug_verbose)
  OBJDIR     = obj/Debug_verbose
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/tracer.exe
  DEFINES   += -DDEBUG -DARMA_DONT_PRINT_ERRORS -DDEBUG_SOLIDPROPAGATION -DDEBUG_VERBOSE -D DEBUG_RAYINTERSECT -DSAVERAYS
  INCLUDES  += -I../raytracer_src/Core -I../raytracer_src/Detectors -I../raytracer_src/json-parser -I../raytracer_src/MaterialProperties -I../raytracer_src/Materials -I../raytracer_src/Sources -I../raytracer_src/SurfaceProperties -I../raytracer_src/Core/Geometry -I../raytracer_src/json-parser/json -I/usr/include/hdf5/serial
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -Wall -W -std=c++11
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L.
  LDDEPS    +=
  LIBS      += $(LDDEPS) -larmadillo -lhdf5_serial -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),releasenorays)
  OBJDIR     = obj/ReleaseNoRays
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/tracer-no-ray-save.exe
  DEFINES   += -DNDEBUG -DARMA_DONT_PRINT_ERRORS -DARMA_NO_DEBUG
  INCLUDES  += -I../raytracer_src/Core -I../raytracer_src/Detectors -I../raytracer_src/json-parser -I../raytracer_src/MaterialProperties -I../raytracer_src/Materials -I../raytracer_src/Sources -I../raytracer_src/SurfaceProperties -I../raytracer_src/Core/Geometry -I../raytracer_src/json-parser/json -I/usr/include/hdf5/serial
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O3 -msse -msse2 -std=c++11
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L. -s
  LDDEPS    +=
  LIBS      += $(LDDEPS) -larmadillo -lhdf5_serial -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/tracer.o \
	$(OBJDIR)/AbsorptionSaver.o \
	$(OBJDIR)/Common.o \
	$(OBJDIR)/ContinuousInteraction.o \
	$(OBJDIR)/LostRaySaver.o \
	$(OBJDIR)/Material.o \
	$(OBJDIR)/Ray.o \
	$(OBJDIR)/SimpleFunctions.o \
	$(OBJDIR)/Source.o \
	$(OBJDIR)/SurfaceProperty.o \
	$(OBJDIR)/TracerController.o \
	$(OBJDIR)/UtilityFunctions.o \
	$(OBJDIR)/AbstractGeometry.o \
	$(OBJDIR)/CircleSurface.o \
	$(OBJDIR)/ConeSurface.o \
	$(OBJDIR)/InternalSurface.o \
	$(OBJDIR)/Oblivion.o \
	$(OBJDIR)/OblivionSurface.o \
	$(OBJDIR)/RectSurface.o \
	$(OBJDIR)/Solid.o \
	$(OBJDIR)/SolidCone.o \
	$(OBJDIR)/SolidCuboid.o \
	$(OBJDIR)/SolidPoly.o \
	$(OBJDIR)/Sphere.o \
	$(OBJDIR)/SphericalSurface.o \
	$(OBJDIR)/Surface.o \
	$(OBJDIR)/TriangleSurface.o \
	$(OBJDIR)/AllDetector.o \
	$(OBJDIR)/LightToolsRayfileDetector.o \
	$(OBJDIR)/ZemaxRayfileDetector.o \
	$(OBJDIR)/jsoncpp.o \
	$(OBJDIR)/BeerLambertLaw.o \
	$(OBJDIR)/ClearMaterial.o \
	$(OBJDIR)/GeneralFluorescence.o \
	$(OBJDIR)/GeneralScatterer.o \
	$(OBJDIR)/OpaqueMaterial.o \
	$(OBJDIR)/RandomBulkScatter.o \
	$(OBJDIR)/DirectionalPointSource.o \
	$(OBJDIR)/IsotropicConicalPointSource.o \
	$(OBJDIR)/IsotropicPointSource.o \
	$(OBJDIR)/IsotropicSurfaceSource.o \
	$(OBJDIR)/IsotropicVolumeSource.o \
	$(OBJDIR)/LambertianPointSource.o \
	$(OBJDIR)/SurfaceNormalSource.o \
	$(OBJDIR)/Absorption.o \
	$(OBJDIR)/Isotropic.o \
	$(OBJDIR)/IsotropicTransparent.o \
	$(OBJDIR)/Lambertian.o \
	$(OBJDIR)/Mirror.o \
	$(OBJDIR)/Refraction.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking tracer
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning tracer
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
.NOTPARALLEL: $(GCH) $(PCH)
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/tracer.o: ../Tracer/tracer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/AbsorptionSaver.o: ../raytracer_src/Core/AbsorptionSaver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Common.o: ../raytracer_src/Core/Common.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ContinuousInteraction.o: ../raytracer_src/Core/ContinuousInteraction.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/LostRaySaver.o: ../raytracer_src/Core/LostRaySaver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Material.o: ../raytracer_src/Core/Material.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Ray.o: ../raytracer_src/Core/Ray.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SimpleFunctions.o: ../raytracer_src/Core/SimpleFunctions.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Source.o: ../raytracer_src/Core/Source.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SurfaceProperty.o: ../raytracer_src/Core/SurfaceProperty.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/TracerController.o: ../raytracer_src/Core/TracerController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/UtilityFunctions.o: ../raytracer_src/Core/UtilityFunctions.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/AbstractGeometry.o: ../raytracer_src/Core/Geometry/AbstractGeometry.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/CircleSurface.o: ../raytracer_src/Core/Geometry/CircleSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ConeSurface.o: ../raytracer_src/Core/Geometry/ConeSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/InternalSurface.o: ../raytracer_src/Core/Geometry/InternalSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Oblivion.o: ../raytracer_src/Core/Geometry/Oblivion.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/OblivionSurface.o: ../raytracer_src/Core/Geometry/OblivionSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/RectSurface.o: ../raytracer_src/Core/Geometry/RectSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Solid.o: ../raytracer_src/Core/Geometry/Solid.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SolidCone.o: ../raytracer_src/Core/Geometry/SolidCone.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SolidCuboid.o: ../raytracer_src/Core/Geometry/SolidCuboid.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SolidPoly.o: ../raytracer_src/Core/Geometry/SolidPoly.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Sphere.o: ../raytracer_src/Core/Geometry/Sphere.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SphericalSurface.o: ../raytracer_src/Core/Geometry/SphericalSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Surface.o: ../raytracer_src/Core/Geometry/Surface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/TriangleSurface.o: ../raytracer_src/Core/Geometry/TriangleSurface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/AllDetector.o: ../raytracer_src/Detectors/AllDetector.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/LightToolsRayfileDetector.o: ../raytracer_src/Detectors/LightToolsRayfileDetector.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ZemaxRayfileDetector.o: ../raytracer_src/Detectors/ZemaxRayfileDetector.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/jsoncpp.o: ../raytracer_src/json-parser/jsoncpp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/BeerLambertLaw.o: ../raytracer_src/MaterialProperties/BeerLambertLaw.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ClearMaterial.o: ../raytracer_src/Materials/ClearMaterial.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/GeneralFluorescence.o: ../raytracer_src/Materials/GeneralFluorescence.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/GeneralScatterer.o: ../raytracer_src/Materials/GeneralScatterer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/OpaqueMaterial.o: ../raytracer_src/Materials/OpaqueMaterial.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/RandomBulkScatter.o: ../raytracer_src/Materials/RandomBulkScatter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/DirectionalPointSource.o: ../raytracer_src/Sources/DirectionalPointSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/IsotropicConicalPointSource.o: ../raytracer_src/Sources/IsotropicConicalPointSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/IsotropicPointSource.o: ../raytracer_src/Sources/IsotropicPointSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/IsotropicSurfaceSource.o: ../raytracer_src/Sources/IsotropicSurfaceSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/IsotropicVolumeSource.o: ../raytracer_src/Sources/IsotropicVolumeSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/LambertianPointSource.o: ../raytracer_src/Sources/LambertianPointSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SurfaceNormalSource.o: ../raytracer_src/Sources/SurfaceNormalSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Absorption.o: ../raytracer_src/SurfaceProperties/Absorption.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Isotropic.o: ../raytracer_src/SurfaceProperties/Isotropic.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/IsotropicTransparent.o: ../raytracer_src/SurfaceProperties/IsotropicTransparent.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Lambertian.o: ../raytracer_src/SurfaceProperties/Lambertian.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Mirror.o: ../raytracer_src/SurfaceProperties/Mirror.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/Refraction.o: ../raytracer_src/SurfaceProperties/Refraction.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
