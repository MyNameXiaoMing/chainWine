/**
    利用gulp-sass编译css
    *require();

 */

var gulp = require('gulp');
var sass = require('gulp-sass');

// 创建一个任务
// 用来编译sass
gulp.task('compileSass',function(){
    //查找文件位置
    gulp.src('./src/sass/*.scss') //得到文件流（文件在内存中的状态）
        .pipe(sass({outputStyle:'expanded'}).on('error',sass.logError)) //编译sass文件
        .pipe(gulp.dest('./src/css/')) //输出到硬盘
});

// 监听文件的任务
gulp.task('jtSass',function(){
    //监听index.scss文件
    //如果有修改，则执行compileSass任务
    gulp.watch('./src/sass/*.scss',['compileSass'])
});

//运行任务
//命令行输入（项目根目录），gulp任务名