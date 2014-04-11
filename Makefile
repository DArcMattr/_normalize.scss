# v1.2.0 _normalize.scss
# TODO:
#   iterate over a list of SVGs to replace with data URIs
#     possible example:
#     http://www.snip2code.com/Snippet/28122/Replaced-Grunt-Gulp-with-a-Makefile
#   portable watch capability
target = normalize.css
deps = assets/_rem.scss
main_scss = _normalize.scss
svg-raw = assets/file-icon-pdf.svg
# TODO introduce more filetype SVGs, iterate over them for the `sed` process

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
