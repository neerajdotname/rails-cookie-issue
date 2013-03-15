Demostrating a Rails 4 issue when cookies generated with Rails 3 are invalided after setting `secret_key_base`.

To reproduce using this example app:

```
$ git co 7c913491d01bd0bba6f9c738af2e58f85b0e64b4
$ bundle
$ rails s
$ open http://localhost:3000

session[:test] = success ; cookies.signed[:test] = success
```

Then, to trigger the issue:

```
$ git co c93cf52c45018ffe0ecfcf902e9712ff9fc51dde
$ bundle
$ rails s
$ open http://localhost:3000

session[:test] = success ; cookies.signed[:test] = failure
```

We want a way to preserve the signed cookie, so it would be `success` instead of `failure`.
