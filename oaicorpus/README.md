Extract fields from OAI
=======================

Get some input data in OAI DC format:

```
$ metha-sync http://www.ssoar.info/OAIHandler/request
$ metha-cat -root Records http://www.ssoar.info/OAIHandler/request > input.xml
```

Size:

```
$ wc -c input.xml
162535329 input.xml
```

Run flux:

```
$ time flux.sh main.flux
{
  "title": "Ethnographies of practice ...",
  "abstract": "...."
}
{
  ...
}
...
```

About 9.4 seconds for 38294 records.
