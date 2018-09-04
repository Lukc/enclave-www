PUBDIR    := pub
NODEDIR   := node_modules
SRCDIR    := website
DESTDIR   := ${PWD}/${PUBDIR}
HUGO      := hugo
NPM       := npm

all: compile

dependencies: ${NODEDIR}

compile: ${PUBDIR}
	${HUGO} -s ${SRCDIR} -d ${DESTDIR}

server: ${PUBDIR}
	${HUGO} serve -s ${SRCDIR} -d ${DESTDIR}

${PUBDIR}:
	mkdir -p ${PUBDIR}

${NODEDIR}:
	${NPM} install

clean:
	rm -rf ${PUBDIR} ${SRCDIR}/resources package-lock.json

cleanall: clean
	rm -rf ${NODEDIR}
