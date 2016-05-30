
NAME = texcompile

PREFIX  = build
BIN_DIR = ${PREFIX}/bin
MAN_DIR = ${PREFIX}/share/man/man1

SOURCE_BIN = ${NAME}.py
SOURCE_MAN = ${NAME}.1

TARGET_BIN = ${BIN_DIR}/${NAME}
TARGET_MAN = ${MAN_DIR}/${NAME}.1

TARGETS = ${TARGET_BIN} ${TARGET_MAN}

default:

install: ${TARGETS}

${TARGET_BIN}: ${SOURCE_BIN}
	install -D $< $@

${TARGET_MAN}: ${SOURCE_MAN}
	install -D $< $@
