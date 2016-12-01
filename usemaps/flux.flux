
default fileName = FLUX_DIR + "example.xml";
default out = "stdout";

fileName|
open-file|
decode-xml|
handle-generic-xml("Record")|
morph(FLUX_DIR + "morph.xml", *)|
encode-json(prettyprinting="true")|
write(out);