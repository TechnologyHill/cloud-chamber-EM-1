STL_DIR=STL
IMG_DIR=images
SRC_DIR=src
STL_DIR_components=STL/components
IMG_DIR_components=images/components
SRC_DIR_components=src/components
PLATE_DIMMENSIONS=120
SIMARRANGE=/usr/local/bin/simarrange
STLSORT=stlsort
OPENSCAD_APP=openscad

SOURCES=$(wildcard $(SRC_DIR)/*.scad)
TARGETS=$(patsubst $(SRC_DIR)/%.scad, $(STL_DIR)/%.stl, $(SOURCES))
IMAGES=$(patsubst $(SRC_DIR)/%.scad, $(IMG_DIR)/%.png, $(SOURCES))
SOURCES_components=$(wildcard $(SRC_DIR_components)/*.scad)
TARGETS_components=$(patsubst $(SRC_DIR_components)/%.scad, $(STL_DIR_components)/%.stl, $(SOURCES_components))
IMAGES_components=$(patsubst $(SRC_DIR_components)/%.scad, $(IMG_DIR_components)/%.png, $(SOURCES_components))

all: default images components_images components_default

default: $(TARGETS)

$(STL_DIR)/%.stl: $(SRC_DIR)/%.scad
	$(OPENSCAD_APP) -m make -o $@ $<
	$(STLSORT) $@ || :
	
images: $(IMAGES)

$(IMG_DIR)/%.png: $(SRC_DIR)/%.scad
	$(OPENSCAD_APP) -m make --render -o $@ $<

arrange: default
	 $(SIMARRANGE) -x $(PLATE_DIMMENSIONS) -y $(PLATE_DIMMENSIONS) $(ARRANGE_TARGETS)

components: components_default components_images

components_default: $(TARGETS_components)

components_images: $(IMAGES_components)

components_clean:
	rm -f $(STL_DIR_components)/*.stl
	rm -f $(IMG_DIR_components)/*.png

clean:
	rm -f $(STL_DIR)/*.stl
	rm -f $(IMG_DIR)/*.png