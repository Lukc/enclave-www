PUBDIR = pub
NODEDIR = node_modules
SRCDIR = website
DESTDIR = ${PWD}/${PUBDIR}

all: compile

dependencies: ${NODEDIR}

compile: ${PUBDIR}
	hugo -s ${SRCDIR} -d ${DESTDIR}

server: ${PUBDIR}
	hugo serve -s ${SRCDIR} -d ${DESTDIR}

${PUBDIR}:
	mkdir -p ${PUBDIR}

${NODEDIR}:
	npm install

clean:
	rm -rf ${PUBDIR} ${SRCDIR}/resources package-lock.json

cleanall: clean
	rm -rf ${NODEDIR}
