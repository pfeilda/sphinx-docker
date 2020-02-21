FROM python
MAINTAINER d.pfeil@api-studio.de

ENV options ""
ENV sourcedir "."
ENV outdir "_build"
ENV filenames ""

RUN mkdir /sphinx
RUN sed -E -e 's/_|latest/\ /g' <<<  $DOCKER_Tag | xargs pip --no-cache-dir install

WORKDIR /sphinx

CMD sphinx-build ${options} ${sourcedir} ${outdir} ${filenames}