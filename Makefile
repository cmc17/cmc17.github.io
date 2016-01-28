# For each index.md file we add the corresponding index.html \
  file as a target
TARGETS = $(patsubst %.md,%.html, \
           index.md $(wildcard */index.md))
TDIR = templates
ARGS = --template=$(TDIR)/template.tpl -B $(TDIR)/sidebar.tpl

all: $(TARGETS)

$(TDIR)/sidebar.tpl : $(TDIR)/sidebar.md
	@echo "Generating $@"
	@pandoc $< -o $@

%.html : %.md $(TDIR)/sidebar.tpl $(TDIR)/template.tpl
	@echo "Generating $@"
	@pandoc $(ARGS) $< -o $@

.PHONY=clean

clean:
	@echo "Removing: $(addprefix \n, \
               $(TARGETS) $(TDIR)/sidebar.tpl)"
	@rm -f $(TARGETS)
	@rm -f $(TDIR)/sidebar.tpl
