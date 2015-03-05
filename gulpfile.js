//llamar a los modulos
var gulp = require('gulp');
var args = require('yargs').argv;
var uglify = require('gulp-uglifyjs');
var coffee = require('gulp-coffee');
var replace = require('gulp-replace');
var connect = require('gulp-connect');

gulp.task('app', function(){
	var activity = args.activity;
	gulp.src(['base/scripts/app.js'])
	.pipe(uglify('app.min.js'))
	.pipe(gulp.dest('base/scripts/'));
	console.log('App ready');
});
gulp.task('clas', function(){
	var activity = args.activity;
	gulp.src(['base/class/*.coffee',])
	.pipe(coffee({bare: true}))
	.pipe(uglify('classes.min.js'))
	.pipe(gulp.dest('base/scripts/'));
	console.log('Classes ready');
});
gulp.task('deal', function(){
	var activity = args.activity;
	gulp.src(['base/scripts/dealersjs.coffee'])
	.pipe(coffee({bare: true}))
	.pipe(uglify('dealersjs.min.js'))
	.pipe(gulp.dest('base/scripts/'))
	console.log('Dealersjs ready');
});
gulp.task('main', function(){
	var activity = args.activity;
	gulp.src([activity+'/js/main.coffee'])
	.pipe(coffee({bare: true}))
	.pipe(uglify('main.min.js'))
	.pipe(gulp.dest(activity+'/js/'));
	console.log('Activity ready');
});
gulp.task('webserver', function(){
	connect.server({
		livereload: true
	});
});

gulp.task('watch', function(){
	var activity = args.activity;
	gulp.watch('base/scripts/dealersjs.coffee', ['deal']);
	gulp.watch('base/class/*.coffee', ['clas']);
	if(activity){
		gulp.watch(activity+'/js/main.coffee', ['main']);
		gulp.watch(activity+'/imgs/*.png', ['main']);
	}
})

gulp.task('dev', ['clas','deal','app','main']);
gulp.task('serve', ['webserver', 'watch']);

gulp.task('production', function(){
	var activity = args.activity;
	gulp.src([
		'base/lib/*.*',
		'base/scripts/*.min.js'
		], {base: './'})
	.pipe(gulp.dest('build/'+activity));
	gulp.src([
		activity+'/assets/**\/*.*',
		activity+'/imgs/**\/*.*',
		activity+'/js/main.min.js',
		activity+'/sounds/**\/*.*',
		activity+'/imgs/**\/*.*',
		activity+'/fonts/**\/*.*',
		activity+'/css/**\/*.*'
		], {base: './'})
	.pipe(gulp.dest('build'));
	gulp.src([activity+'/index.html'], {base: './'})
	.pipe(replace('../','./'))
	.pipe(gulp.dest('build'));
	console.log('Activity '+activity+' Complete!');
});