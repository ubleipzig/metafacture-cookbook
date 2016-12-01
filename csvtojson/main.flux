default file = "input.csv";

file|
open-file|
as-lines|
decode-csv(hasHeader="true")|
encode-json|
write("stdout");

