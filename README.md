# Template for building Docker images in Renku 2.0

This template can be used to extend one of the global images used in RenkuLab or 
to extend an image that was built from a user's code repository. 

## How to use

Replace the source image in the `FROM` line of the `Dockerfile` to point to the image you 
want to extend. Specify additional packages to be installed by `apt` directly in the `Dockerfile`
and/or add additional Python packages to the `requirements.txt`. 

When you make a chance in the repository, the GitHub action (from `.github/workflows/build.yaml`)
will automatically create a new image. You can find it under "packages" of the repository and use it
directly in a Renku "External image" session launcher. 
