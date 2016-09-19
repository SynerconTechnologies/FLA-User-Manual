# the make file for the Synercon manual and quick start guide.


MAKE_DIR=$(PWD)
MANUAL_DIR    := $(MAKE_DIR)/user_manual
QUICK_DIR     := $(MAKE_DIR)/quick_reference

MEDIA_DIR=media
MEDIA_DIR+=media/cat_et_screenshots
MEDIA_DIR+=media/cummins_insite_screenshots
MEDIA_DIR+=media/dddl_screenshots
MEDIA_DIR+=media/ddec_screenshots
MEDIA_DIR+=media/dg_tools_screenshots
MEDIA_DIR+=media/fla_angled
MEDIA_DIR+=media/fla_kit
MEDIA_DIR+=media/fla_portal_screenshots
MEDIA_DIR+=media/fla_portal_screenshots/full_report
MEDIA_DIR+=media/fla_preview_screenshots
MEDIA_DIR+=media/fla_screens
MEDIA_DIR+=media/fla_screens/ethernet_and_others
MEDIA_DIR+=media/fla_screens/ethernet_and_others/boot
MEDIA_DIR+=media/fla_screens/ethernet_and_others/main
MEDIA_DIR+=media/fla_screens/ethernet_and_others/sys_conf
MEDIA_DIR+=media/fla_screens/ethernet_and_others/veh_scan
MEDIA_DIR+=media/fla_screens/no_ethernet
MEDIA_DIR+=media/graphics
MEDIA_DIR+=media/logos
MEDIA_DIR+=media/power_spec_screenshots
MEDIA_DIR+=media/sss
MEDIA_DIR+=media/syercon_synergisics

all: media
	make -C $(MANUAL_DIR)
	make -C $(QUICK_DIR)
	mkdir -p 'FLA Manuals'
	cp $(MANUAL_DIR)/user_manual.pdf FLA\ Manuals/FLA\ User\ Manual.pdf
	cp $(QUICK_DIR)/*.pdf FLA\ Manuals/FLA\ Quick\ Reference.pdf
	zip -vr ./FLA\ Manuals.zip FLA\ Manuals
	rm -r 'FLA Manuals'

user_manual: media
	cd MANUAL_DIR; make all

quick_reference: media
	cd QUICK_DIR; make all

media:
	mkdir -p $(MEDIA_DIR)
	cd media_src && find . -iname \*.png -exec convert -verbose -background white -flatten -resize x720 "{}" "../media/{}.jpg" \;
	cd media_src/fla_screens && find . -iname \*.png -exec convert -verbose -background white -flatten -resize x480 "{}" "../../media/fla_screens/{}.jpg" \;
	cd media && find . -iname \*.png.jpg -type f -exec bash -c 'mv "$$1" "$${1/.png/}"' -- {} \;

clean:
	make -C $(MANUAL_DIR) clean
	make -C $(QUICK_DIR) clean
