# Makefile for drawing the 'topics' digraph
DOT=dot
OPEN=xdg-open

all: topics.png

topics.png: topics.gv
	${DOT} -Tpng $< -o $@

show: topics.png
	${OPEN} $^

.PHONY: all show
