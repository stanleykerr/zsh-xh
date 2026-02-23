# zsh-xh-completions

A zsh plugin for automatically generating and utilizing zsh completions for `xh`, a modern replacement for `curl`. xh is a friendly and fast tool for sending HTTP requests. It reimplements as much as possible of HTTPie's excellent design, with a focus on improved performance.

## Prerequisite Checks

A check will be performed to verify that `xh` has been installed:

- [`xh`](https://github.com/ducaale/xh) - a modern replacement for `curl`, a friendly and fast tool for sending HTTP requests, reimplementing as much as possible of HTTPie's excellent design, with a focus on improved performance.

## Installation

First we need to [download and install `xh`](https://github.com/ducaale/xh) by running the following:

```sh
curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh
```

Finally we need to enable `xh` using the [Antidote](https://antidote.sh/) zsh plugin manager ([Antidote GitHub](https://github.com/mattmc3/antidote)), either by adding the following to your `.zsh_plugins.txt` file or by running the following command:

### Option 1: Use the Antidote CLI

```sh
antidote use stanleykerr/zsh-xh
```

### Option 2: Add to `~/.zsh_plugins.txt`

```sh
# Add the following line to your `.zsh_plugins.txt` file before completion plugins like `zsh-users/zsh-completions`, `mattmc3/zephyr`'s completion plugin, or similar
stanleykerr/zsh-xh
```

## License

The **zsh-xh** plugin is released under the [GNU Affero General Public License v3.0](https://github.com/stanleykerr/zsh-xh/blob/main/LICENSE), unless explicitly mentioned in the file header.
