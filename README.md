# gotools 

# Installation
```sh
docker pull arandel/gotools
```

# Usage
```sh
docker run --rm -v $(pwd):/working arandel/gotools revive --help
docker run --rm -v $(pwd):/working arandel/gotools structcheck
docker run --rm -v $(pwd):/working arandel/gotools aligncheck
docker run --rm -v $(pwd):/working arandel/gotools varcheck
docker run --rm -v $(pwd):/working arandel/gotools errcheck 
```
