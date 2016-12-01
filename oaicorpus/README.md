Extract fields from OAI
=======================

Get some input data in OAI DC format:

```
$ metha-sync http://www.ssoar.info/OAIHandler/request
$ metha-cat -root Records http://www.ssoar.info/OAIHandler/request > input.xml
```

Run flux:

```
$ flux.sh main.flux
{
  "title": "Ethnographies of practice ...",
  "abstract": "...."
}
{
  ...
}
...
```

