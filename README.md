# Homebrew tap for UnixDM

[UnixDM](https://github.com/wthrajat/unixdm) is a correctness-first,
resumable download manager for Unix terminals.

## Install

```bash
brew install wthrajat/unixdm/unixdm
```

Homebrew automatically adds the tap when you use the fully qualified formula
name. Alternatively:

```bash
brew tap wthrajat/unixdm
brew install unixdm
```

Verify the installation:

```bash
unixdm --version
```

## Upgrade

```bash
brew update
brew upgrade unixdm
```

## Uninstall

```bash
brew uninstall unixdm
brew untap wthrajat/unixdm
```

Issues with UnixDM belong in the
[main project](https://github.com/wthrajat/unixdm/issues). Packaging-specific
issues belong in this tap.
