#!/bin/bash
if [ "$1" == '--help' ]; then
  echo "Usage: $0 <path to CGAL> <path to output>"
  echo "Builds and packages the Polyhedron demo form the CGAL dir."
  exit 0
fi
docker run --rm -v "$2":/results:Z -v "$1":/cgal:ro docker.io/cgal/bundle-3d-demo '/scripts/build.sh -j6 && /scripts/deploy.sh'

