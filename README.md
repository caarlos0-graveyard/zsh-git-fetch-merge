# zsh-git-fetch-merge [![Build Status](https://travis-ci.org/caarlos0/zsh-git-fetch-merge.svg?branch=master)](https://travis-ci.org/caarlos0/zsh-git-fetch-merge)

If you work a lot with forks, you probably every once in a while have to:

```sh
$ git fetch upstream
$ git merge upstream/master
```

Or `git pull`, or something else.

I don't like to repeat myself, so, I created this small plugin.

## Install

### antibody

```sh
$ antibody bundle caarlos0/zsh-git-fetch-merge
```

### antigen

```sh
$ antigen bundle caarlos0/zsh-git-fetch-merge
```

## Usage

```sh
$ git-fetch-merge <branch - defaults to master>
```

Or, go ahead and alias it:

```sh
$ git config --global alias.fm '!zsh -ic git-fetch-merge'
```

Then

```sh
$ git fm
```

Have fun!
