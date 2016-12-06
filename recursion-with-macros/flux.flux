
default fileName = FLUX_DIR + "input.xml";
default out = "stdout";

fileName|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "morph.xml", *)|
encode-formeta(style="multiline")|
write(out);
