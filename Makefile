# For each index.md file we add the corresponding index.html \
  file as a target
TARGETS = $(patsubst %.md,%.html, \
           index.md $(wildcard */index.md))
ARGS = --template=template.html -B sidebar.html

all: $(TARGETS)

sidebar.html: sidebar.md
	@echo "Generating $@"
	@pandoc sidebar.md -o sidebar.html

%.html : %.md sidebar.html template.html
	@echo "Generating $@"
	@pandoc $(ARGS) $< -o $@

.PHONY=clean

clean:
	@echo "Removing: $(addprefix \n, \
               sidebar.html $(TARGETS))"
	@rm -f sidebar.html
	@rm -f $(TARGETS)
