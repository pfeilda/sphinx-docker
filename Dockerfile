FROM python
MAINTAINER d.pfeil@api-studio.de

ENV options ""
ENV sourcedir "."
ENV outdir "_build"
ENV filenames ""

RUN mkdir /sphinx
RUN pip --no-cache-dir install sphinx

WORKDIR /sphinx

CMD sphinx-build ${options} ${sourcedir} ${outdir} ${filenames}