FROM python
MAINTAINER d.pfeil@api-studio.de

ENV options ""
ENV sourcedir "."
ENV outdir "_build"
ENV filenames ""

RUN mkdir /sphinx
RUN pip install sphinx
RUN pip install sphinx_rtd_theme

WORKDIR /sphinx

CMD sphinx-build ${options} ${sourcedir} ${outdir} ${filenames}