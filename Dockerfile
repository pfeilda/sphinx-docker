FROM python
MAINTAINER d.pfeil@api-studio.de

ARG DOCKER_TAG=$DOCKER_TAG

ENV options ""
ENV sourcedir "."
ENV outdir "_build"
ENV filenames ""

RUN mkdir /sphinx
RUN /bin/bash -c 'sed -E -e "s/-_-|latest$|v([0-9]{1,}\.){2}[0-9]{1,}$/\ /g" <<< "sphinx-_-$DOCKER_TAG" | xargs pip --no-cache-dir install'

WORKDIR /sphinx

CMD sphinx-build ${options} ${sourcedir} ${outdir} ${filenames}