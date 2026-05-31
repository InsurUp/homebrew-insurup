# InsurUp Homebrew Tap

Homebrew formulae for [InsurUp](https://insurup.com) command-line tools.

```bash
brew tap InsurUp/insurup
```

## Available formulae

| Formula | Description | Source |
| --- | --- | --- |
| `insurup` | InsurUp CLI | [InsurUp/cli](https://github.com/InsurUp/cli) |

Install any formula with:

```bash
brew install InsurUp/insurup/<formula>
# e.g.
brew install InsurUp/insurup/insurup
```

## How formulae are maintained

Each tool's **own repository** owns its formula in this tap. On release, that
repo's workflow renders `Formula/<name>.rb` (version + per-platform `url`/`sha256`)
and pushes **only that one file**, so formulae never conflict with each other.

To add a new package: have its release workflow write `Formula/<name>.rb` and push
it here (a token with push access to this repo). See the CLI's
[`packaging/homebrew/update-tap.sh`](https://github.com/InsurUp/cli/blob/main/packaging/homebrew/update-tap.sh)
for a reference implementation.
