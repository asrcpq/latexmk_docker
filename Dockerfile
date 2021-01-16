From debian:testing

ADD sources.list /etc/apt/sources.list

RUN apt update
RUN apt install -y \
	latexmk \
	texlive-science texlive-xetex texlive-latex-extra \
	texlive-latex-recommended texlive-fonts-recommended texlive-fonts-extra texlive-lang-cjk
RUN apt clean

RUN mkdir /app

ADD run.sh /run.sh
RUN chmod 755 /run.sh

CMD ["/run.sh"]
