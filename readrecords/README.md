Split reader into records
=========================

Splits a reader at separator, emits strings.

```
$ cat input.file
ABCX
DEFX
GAHX

$ cat flux.flux
default in="input.file";

in|
open-file|
as-records(separator="X", skipEmptyRecords="true")|
write("stdout");


$ flux.sh flux.flux 
ABC

DEF

GAH
```