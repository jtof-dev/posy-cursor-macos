# posy-improved-cursor-mousecape
A repo containing the guts of Posy's Cursor for Windows along with a Mousecape-compatible .cape

## ani2ico.c

A script in C that converts each frame of a `.ani` file to a `.ico` file (source: [this archlinux forum post](https://bbs.archlinux.org/viewtopic.php?id=151153))

Compile with:

```
gcc ani2ico.c -o ani2ico
```

And run with:

```
/path/ani2ico /path/filename.ani
```

## Converting multiple `.ico` files into one `.png`

Using `ImageMagick`, convert the `.ico`s to `.png`s and stack them (source: [macrumors](https://forums.macrumors.com/threads/mousescape-0-0-5-1579.2061866/))

```
magick morgify -format png *.ico
magick convert * -append result.png
```

Assuming the `.ani` and `.ico` files are in a seperate folder by themselves