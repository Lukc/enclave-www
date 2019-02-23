PUBDIR    := pub
NODEDIR   := node_modules
SRCDIR    := ${PWD}/website
DESTDIR   := ${PWD}/${PUBDIR}
HUGO      := hugo
NPM       := npm
CONFIG    := ${SRCDIR}/config.toml

all: compile

dependencies: ${NODEDIR}

compile: ${PUBDIR}
	${HUGO} --config "${CONFIG}" -s "${SRCDIR}" -d "${DESTDIR}"

server: ${PUBDIR}
	${HUGO} serve --config "${CONFIG}" -s ${SRCDIR} -d ${DESTDIR}

${PUBDIR}:
	mkdir -p ${PUBDIR}

${NODEDIR}:
	${NPM} install

clean:
	rm -rf ${PUBDIR} ${SRCDIR}/resources package-lock.json

cleanall: clean
	rm -rf ${NODEDIR}
