# Extended container image

An extended docker container for cases where the busybox image is too limited.
This is currently based on the official debian image.

## Caution

This repository is not intended to circumvent packaging issues. Libraries may only be added if it does not make sense to package them for technical reasons. This is e.g. the case for libgl. Since it is usually provided by the GPU driver, we don't want to provide a conda package. It has to come from the underlying system. In case of a docker container that shall ship a bioconda package though, it makes sense that it includes a default libgl such that the package can be properly executed.
