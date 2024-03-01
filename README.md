# Anypay Homebrew

```
brew tap anypay/anypay

brew install anypay

brew upgrade anypay
```

## Updating This Repo When A New Build Version Is Published

(Eventually this shall be automated)

After releasing a new version to github the latest version should be included here.

Download the latest verion's .tar.gz file for both ARM and AMD, then run:

`shasum -a 256 path_to_build.tar.gz`

Update `anypay.rb` with the latest BUILD_VERSION variable and manually set both its `sha256`
with the correct hashes.

Once this update is pushed to github, clients will need to run `brew upgrade anypay`
