READ = evince
COMP = pdflatex
NUM = 2

ass$(NUM).pdf: ass$(NUM).tex
	$(COMP) $<
	
read: ass$(NUM).pdf
	$(READ) $<
	
coffee:
	@echo "No. You drink too much."
	
ques: assignment_$(NUM)_14.pdf
	$(READ) $<

clean:
	rm -f *.log *.aux *~

