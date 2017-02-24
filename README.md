# openmaptiles-styles

This repository contains the convenience scripts to build styles for use with
[`tileserver-gl`](https://github.com/klokantech/tileserver-gl).

## Submodules

Make sure you have also cloned the submodules: `git submodules update --init`

## Requirements

- Node 6.x (The tools involved only provide binaries for LTS versions of Node)
- [yarn](https://yarnpkg.com/lang/en/)

## Pre-requisites

Install the various tools by running `yarn install`.

## Usage

You can build everything by running `./build.sh`. The results will be output to `./target`.

## Run in Docker Container

You can run this from a Docker Container to save you the trouble of installing the dependencies.

```bash
docker-compose up --build
```

## Style Configuration

You might want to update the following keys in the styles `.json` files to match your server configuration.

```json
{
// ...
  "sources": {
    "openmaptiles": {
      "url": "https://free.tilehosting.com/data/v3.json?key={key}",
      "type": "vector"
    }
  },
  "sprite": "https://openmaptiles.github.io/fiord-color-gl-style/sprite",
  "glyphs": "https://free.tilehosting.com/fonts/{fontstack}/{range}.pbf?key={key}",
// ...
}
```

For example, you can follow how [`iOneMySgMap`](https://github.com/Neo-Type/iOneMySgMap/blob/master/config/jq.sh#L17)
does it.
