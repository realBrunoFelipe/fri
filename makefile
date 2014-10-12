# Creates webpages by converting text file in every folder to text.html using markdown parser. Any additional subpages need to be added by hand as a new rule.

path = courses/
COURSES := $(notdir ${shell find $(path) -maxdepth 1 -mindepth 1 -type d})

# all: all the dirs in courses dir
all: $(COURSES)

# emp:
emp: $(path)emp/text.html $(path)emp/1kolokvij.html $(path)emp/3kolokvijERP.html

$(path)emp/1kolokvij.html : $(path)emp/1kolokvij.txt
	cd $(path)emp; \
	./create-1kolokvij-html

$(path)emp/3kolokvijERP.html : $(path)emp/3kolokvijERP.txt
	cd $(path)emp; \
	./create-3kolokvijERP-html

# mt:
mt: $(path)mt/text.html

# tpo:
tpo: $(path)tpo/text.html

# is
is: $(path)is/text.html

# mstk
mstk: $(path)mstk/text.html

# Generic rule for converting text file into text.html, regardles of the path 
%/text.html : %/text
	scripts/create-text-html $(dir $<) scripts/header

