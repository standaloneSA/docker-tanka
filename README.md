A small simple repo for building a docker [Tanka](https://tanka.dev/) container that can build and compile jsonnet. 

'./build' creates the docker image. './build --latest' tags it as latest. 

Usage the tanka script to point it to a tanka config and ouput directory: 

```
Tanka Docker - renders Tanka configs

Usage: ./tanka [-i|--input] <tanka directory> [-o|--output] <manifest directory>

Optional flags:

  [-e|--environment]  - Tanka environment to render
  [--interactive]     - Mounts the directories but drops you into a shell
  [--explore]         - Opens a shell, but doesn't require mounted dirs
  [-h|--help]         - This help text



```

