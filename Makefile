.SUFFIXES: .txt .xml

XML2RFC := xml2rfc
IDDIFF := iddiff

draft_base := draft-pignataro-icmp-enviro-info
revisions_dir := revisions

.PHONY: all
all: $(draft_base).txt diff

%.txt: %.xml
	$(XML2RFC) $<

.PHONY: diff
diff: $(draft_base).txt
	@prev=$$(ls $(revisions_dir)/$(draft_base)-*.txt 2>/dev/null | sort -V | tail -1); \
	if [ -z "$$prev" ]; then \
	  echo "No previous version found in $(revisions_dir)/, skipping diff"; exit 0; \
	fi; \
	echo "Diffing $$prev -> $(draft_base).txt"; \
	$(IDDIFF) "$$prev" $(draft_base).txt > $(draft_base)-diff.html; \
	echo "Wrote $(draft_base)-diff.html"

.PHONY: clean
clean:
	rm -f $(draft_base)-diff.html
