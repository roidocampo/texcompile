
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
	@echo Make what? You probably want \`make install\'.

install: ${TARGETS}

${TARGET_BIN}: ${SOURCE_BIN}
	mkdir -p '${BIN_DIR}'
	install '$<' '$@'

${TARGET_MAN}: ${SOURCE_MAN}
	mkdir -p '${MAN_DIR}'
	cp '$<' '$@'
