# Ash258 Local taps

## Maintenance

```zsh
brew livecheck --cask nayaflow
brew bump-cask-pr --write-only nayaflow 
```

## How do I install these formulae?

`brew install ash258/local/<formula>`

Or `brew tap ash258/local` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "ash258/local"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
