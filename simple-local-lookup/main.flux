// Fixed lookup with morph.
//
//     $ flux.sh main.flux
//     {"fullname":"Alice Anonymous"}
//     {"fullname":"Bob Anonymous"}

default file = "input.csv";

file|
open-file|
as-lines|
decode-csv(hasHeader="true")|
morph(FLUX_DIR + "morph.xml")|
encode-json|
write("stdout");

