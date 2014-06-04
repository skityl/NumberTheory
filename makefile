READ = evince
COMP = pdflatex
NUM = 6

ass$(NUM).pdf: ass$(NUM).tex
	$(COMP) $<

read: ass$(NUM).pdf
	$(READ) $<

spell: ass$(NUM).tex
	ispell $^

coffee:
	@echo "No. You drink too much."

ques: assignment_$(NUM)_14.pdf
	$(READ) $<

class_update:
	cd ..;
	git submodule update --init --recursive;
	# cd -;
	cp -r ../UNSW_Latex/artwork artwork;
	cp -r ../UNSW_Latex/unswmaths.cls unswmaths.cls
	cp -r ../UNSW_Latex/unswshortcuts.sty unswshortcuts.sty


clean:
	rm -f *.log *.aux *~

