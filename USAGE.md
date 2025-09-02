# `curl` query

### runing code

```
bash> stack build
bash> stack exec nova-post-client-exe
```

### check some queries 

```
bash> curl https://api.novapost.com/v.1.0/clients/authorization?apiKey=xxx
bash> curl --location -g 'https://api-stage.novapost.com/v.1.0/shipments?ids[]=20700684491449&limit=1&page=1' -H 'Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJucCIsImlhdCI6MTc1NjczMDQ0MCwiZXhwIjoxNzU2NzM0MDQwLCJzcmMiOiJhcGkyIiwicmVmIjoiNTBjMWIzZDMtNDNkYS0xMWVmLTk5ZWItNDhkZjM3YjkxZjRhIiwiY2lkIjoiIiwic3ViIjoiZXlKcGRpSTZJbXB6ZFVnMVZsSkdlazlqWlU5aGIyZFlhVXh1Y25jOVBTSXNJblpoYkhWbElqb2lZV2xuTkdkRllqRlRaRWc0VVd0dlFqQjJkQ3RWU21sWFRGZHNWVlZvY1dkWmFrMTJNVWxsZVRSWGRsRmFaSGt6TjJSU1FYTXZlRXB6VEU1d1RHdHlkQ0lzSW0xaFl5STZJalF3TmpreU1EUTBNbVk1TWpNNVpXTTJabU01TURRd056UXlORFkyT0RKaU1HTmpOelJpTm1abU9URmpPVGRsTXpGa1pqSTRZV001TWpBeE1UTTJaakFpTENKMFlXY2lPaUlpZlE9PSIsInNlbmRlckVEUlBPVSI6ImV5SnBkaUk2SWtKTmJrRklXRFp6WkZOVmJIcG1iSEphU25GeFpFRTlQU0lzSW5aaGJIVmxJam9pU1hweGNXdHNaU3RNYURsMmNVaEthbWg2UVVsMlVUMDlJaXdpYldGaklqb2lOemc1TVdZMk9HRTJaR0ZqWWpFeU1tUmtOakJqTTJZMk5UbGlOR1pqTmpGalpUWmpZVEJqWTJNNVlqZGtZVFppTWpGbU9HTXdaak15TnpRMlkyWTNNU0lzSW5SaFp5STZJaUo5In0.C85IF0rjqrAfMTFnrDDk_rL6ODFyzxwoJhjSIMgoZIg'
```

[1]: https://github.com/snoyberg/http-client/tree/master/http-client
[2]: https://github.com/snoyberg/http-client/blob/master/TUTORIAL.md
[3]: https://hackage.haskell.org/package/http-client
[4]: https://stackoverflow.com/questions/15866765/haskell-library-for-http-communication
[5]: https://nieldw.medium.com/using-curl-to-authenticate-with-jwt-bearer-tokens-55b7fac506bd
[6]: https://documenter.getpostman.com/view/37226773/2sAYQWLZdh#9805de36-ca7c-4300-9521-d8033a6f571b
[7]: https://new.novaposhta.ua/dashboard/settings/developers
