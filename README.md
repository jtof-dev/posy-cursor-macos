# posy-improved-cursor-mousecape
A repo containing the guts of Posy's Cursor for Windows along with a Mousecape-compatible `.cape`

## Installation

- To change your cursor in MacOS, use [Mousecape](https://github.com/alexzielenski/Mousecape/releases) (just unzip and install like normal)

- Download [posy-cursor.cape](posy-cursor.cape) from this repo

- Open `Mousecape`, hit `File` > `Import Cape` > select `posy-cursor.cape`

## Some Stupid Tools

- I used a couple of pretty dumb tools to convert all the `.cur`, `.ani`, and `.ico` files into `.png`s to use with `Mousecape`

### ani2ico.c

A script in C that converts each frame of a `.ani` file to a `.ico` file (source: [this archlinux forum post](https://bbs.archlinux.org/viewtopic.php?id=151153))

- Compile with:

```
gcc ani2ico.c -o ani2ico
```

- And run with:

```
/path/ani2ico /path/filename.ani
```

### Converting Windows cursor files into `.png`s

Using `ImageMagick`, convert the `.ico`s to `.png`s and stack them (source: [macrumors](https://forums.macrumors.com/threads/mousescape-0-0-5-1579.2061866/))

- To convert an `.ico` to a series of `.png`s:

```
magick mogrify -format png *.ico
```

- And to stack all `.png`s in a folder into one long `.png` "sprite-sheet"

```
magick convert * -append result.png
```

- Lastly, to convert `.cur` into `.png`:

```
magick convert input.cur output.png
```

Assuming the `.ani` and `.ico` files are in a seperate folder by themselves

### Sorting `.png`s before stacking them

- I wrote a very basic `for` bash script ([`animated-cursor.sh`](animated-cursor.sh)) to copy 24 of the `.png`s into a seperate folder before they get stacked (because MacOS only accepts 24fps animations)

## Missing

The following cursors are missing because they are unique to MacOS, so Posy's Cursors don't already have a cursor for each. Either can be overwritten with the default cursor or through a photoshop job

- Alias

- Copy + Copy Drag

## Stuff I'm too lazy to implement

- Half arrow cursors for resizing (see the [official Apple cursor images](https://support.apple.com/guide/mac-help/pointers-in-macos-mh35695/mac))