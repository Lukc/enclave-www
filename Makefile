
PUBDIR = pub

all: ${PUBDIR}/index.xhtml ${PUBDIR}/mentions.xhtml ${PUBDIR}/chatroom.xhtml ${PUBDIR}/enclave.css

${PUBDIR}/index.xhtml: index.moon template.moon ${PUBDIR}
	moon index.moon > ${PUBDIR}/index.xhtml

${PUBDIR}/mentions.xhtml: mentions.moon template.moon ${PUBDIR}
	moon mentions.moon > ${PUBDIR}/mentions.xhtml

${PUBDIR}/chatroom.xhtml: chatroom.moon template.moon ${PUBDIR}
	moon chatroom.moon > ${PUBDIR}/chatroom.xhtml

${PUBDIR}/enclave.css: enclave.sass ${PUBDIR}
	sassc enclave.sass > ${PUBDIR}/enclave.css

${PUBDIR}:
	mkdir -p '${PUBDIR}'

clean:
	rm ${PUBDIR}/index.xhtml ${PUBDIR}/mentions.xhtml ${PUBDIR}/chatroom.xhtml ${PUBDIR}/enclave.css
	rm -r ${PUBDIR}

