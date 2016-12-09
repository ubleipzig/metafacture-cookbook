README
======

Javascript to the rescue!

Turn ID like `oai:arXiv.org:0704.0010` into `finc-123-b2FpOmFyWGl2Lm9yZzowNzA0LjAwMTA`.

```
$ flux.sh flux.flux
{
  "finc.record_id": "finc-123-b2FpOmFyWGl2Lm9yZzowNzA0LjAwMDQ",
  "rft.atitle": "A determinant of Stirling cycle numbers counts unlabeled acyclic   single-source automata",
  "authors": [
    {
      "rft.au": "Callan, David"
    }
  ],
  "url": [
    "http://arxiv.org/abs/0704.0004"
  ]
}
{
  "finc.record_id": "finc-123-b2FpOmFyWGl2Lm9yZzowNzA0LjAwMTA",
  "rft.atitle": "Partial cubes: structures, characterizations, and constructions",
  "authors": [
    {
      "rft.au": "Ovchinnikov, Sergei"
    }
  ],
  "url": [
    "http://arxiv.org/abs/0704.0010"
  ]
}
```

----

Variation: Cut of a part of an identifier, then apply some javascript.

```
$ echo 'oai:arXiv.org:0704.0010' | cut -d : -f3 | tr -d '\n' | base64
MDcwNC4wMDEw
```

Steps:

```
<!-- Base64 encode with Javascript. -->
<combine name="finc.record_id" value="finc-123-${identifier_key}">
  <!-- Record-ID  -->
  <data source="header.identifier.value" name="identifier_key">
    <replace pattern="oai:arXiv.org:" with="" />
    <script file="$[FLUX_DIR]/btoa.js" invoke="b64URLEncode"/>
  </data>
</combine>
```

Run:

```
$ flux.sh flux.flux
{"finc.record_id":"finc-123-MDcwNC4wMDA0"}
{"finc.record_id":"finc-123-MDcwNC4wMDEw"}
```
