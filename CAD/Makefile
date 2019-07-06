#easy rendering of .stl or .png files

SRC_DIR = src
STL_DIR = STL
IMG_DIR = images

APP = openscad


%.stl: $(SRC_DIR)/%.scad
	$(APP) -m make -o $(STL_DIR)/$@ $< #rendering .stl file

%.png: $(SRC_DIR)/%.scad
	$(APP) -m make --render -o $(IMG_DIR)/$@ $< #rendering .png image