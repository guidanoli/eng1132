# Makefile for drawing the 'topics' digraph

all: topics.png

topics.png: topics.gv
	dot -Tpng $< -o $@

show:
	xdg-open topics.png

.PHONY: all show
