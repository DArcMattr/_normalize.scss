# v2.0.0 _normalize.scss
# TODO:
#   iterate over a list of SVGs to replace with data URIs
#     possible example:
#     http://www.snip2code.com/Snippet/28122/Replaced-Grunt-Gulp-with-a-Makefile
#   portable watch capability
CC=sass
CFLAGS=--style nested --no-cache

target = normalize.css
main_scss = _normalize.scss

$(target): $(prereqs)
	@echo "Running Sass"
	$(CC) $(CFLAGS) $(main_scss) $(target)

clean:
	@echo "deleting"
	@-rm -f $(target) $(target).map
