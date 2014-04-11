target = normalize.css
deps = assets/_rem.scss
main_scss = _normalize.scss
svg-raw = assets/file-icon-pdf.svg

prereqs = $(main_scss) $(deps) $(svg-raw)
svg-datauri := $(shell svgo -i $(svg-raw) --datauri=base64 -o -)

$(target): $(prereqs)
	@echo "running sassc"
	@sassc -t nested -o $(target) $(main_scss)
	@echo "running sed"
	@sed -i '' "s#$(subst .,\.,$(svg-raw))#$(svg-datauri)#" $(target)

clean:
	@echo "deleting"
	@-rm -f $(target)
