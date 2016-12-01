default filename = FLUX_DIR + "input.xml";

filename|
open-file|
decode-xml|
handle-generic-xml("Record")|
morph(FLUX_DIR + "morph.xml")|
encode-json|
write("stdout");