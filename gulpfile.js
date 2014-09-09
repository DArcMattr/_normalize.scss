var
  gulp = require('gulp'),
  cssBase64 = require('gulp-css-base64'),
  del = require('del'),
  minifycss = require('gulp-minify-css'),
  rename = require('gulp-rename'),
  sass = require('gulp-sass'),
  watch = require('gulp-watch');

gulp.task('clean', function(cb) {
  del(['normalize.css','normalize.css.map'], cb);
});

gulp.task('styles', ['clean'], function() {
  return gulp.src('normalize.scss')
    .pipe(sass())
    .pipe(cssBase64({
      verbose: true,
      baseDir: './',
      extensionsAllowed: ['.gif','.png','.svg','.jpg']
    }))
    .pipe(gulp.dest('./'))
    .pipe(minifycss())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('./'))
//    .on('error', function(err) { console.log(err.message); });
});

gulp.task('default', ['watch','styles']);

gulp.task('watch', function() {
  gulp.watch(['normalize.scss','_normalize.scss','assets/_rem.scss'], ['styles']);
});

