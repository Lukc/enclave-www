PUBDIR = pub
NODEDIR = node_modules
SRCDIR = website

all: compile

dependencies: ${NODEDIR}

compile: ${PUBDIR}
	hugo -s ${SRCDIR} -d ${PUBDIR}

server: ${PUBDIR}
	hugo serve -s ${SRCDIR} -d ${PUBDIR}

${PUBDIR}:
	mkdir -p ${PUBDIR}

${NODEDIR}:
	npm install

clean:
	rm -rf ${PUBDIR} ${SRCDIR}/resources package-lock.json

cleanall: clean
	rm -rf ${NODEDIR}
