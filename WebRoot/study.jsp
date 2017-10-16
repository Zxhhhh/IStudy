<%@page import="com.why.service.Study_articleService"%>
<%@page import="com.why.service.Study_videoService"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.why.service.Study_video_typeService"%>
<%@page import="com.why.util.SplitPageUtil"%>
<%@page import="com.why.vo.VO4VideoShowRtn"%>
<%@page import="com.why.service.VideoService"%>
<%@page import="com.why.vo.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱学视频</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'
	media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<!--<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'> -->
<!-- //fonts -->
<style>
html,body,h1,h2,h3,h4,h5,h6,div,dl,dt,dd,ul,ol,li,p,blockquote,pre,hr,figure,table,caption,th,td,form,fieldset,legend,input,button,textarea,menu
	{
	margin: 0;
	padding: 0;
	outline: none;
}

html,body,fieldset,img,iframe,abbr {
	border: 0;
}

html,body {
	height: 100%;
}

html,body,h1,h2,h3,h4,h5,h6,div,dl,dt,dd,ul,ol,li,p,blockquote,pre,hr,figure,table,caption,th,td,form,fieldset,legend,input,button,textarea,menu
	{
	margin: 0;
	padding: 0;
	outline: none;
}

.m-selfDefineWithDiscuss-container {
	left: 0px;
	top: 0px;
	width: 1260px;
	height: 480px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 5px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
}

.index-selfDefineFunc-i_div243 {
	left: 0px;
	top: 0px;
	width: 1260px;
	height: auto;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px auto;
	padding: 0px;
	color: black;
	font-size: 16px;
	position: relative;
}

.p-index-selfDefineFunc {
	left: 0px;
	top: 0px;
	width: 100%;
	height: auto;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 50px 0px 0px;
	padding: 0px;
	color: black;
	font-size: 16px;
	position: relative;
	display: block;
}

.p-index-container {
	left: 0px;
	top: 0px;
	width: 100%;
	height: auto;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	font-size: 16px;
	position: relative;
	display: block;
}

#g-body {
	padding-bottom: 300px;
}

#g-body {
	padding-bottom: 208px;
}

#g-container {
	min-height: 100%;
	position: relative;
}

body,textarea,input,button,select,keygen,legend {
	font: 12px/1.5 "Arial", "Hiragino Sans GB", "Microsoft YaHei ", 微软雅黑,
		"serif";
	color: #333;
	outline: 0;
	font-family: "Arial", "Hiragino Sans GB", "Microsoft YaHei", 微软雅黑,
		"Helvetica", "sans-serif";
}

body {
	background: #eee;
	font-size: 12px;
}

body {
	min-width: 960px;
}
/* @media screen and (min-width:1210px) */
body {
	overflow-x: hidden;
}

img {
	vertical-align: top;
}

html,body,fieldset,img,iframe,abbr {
	border: 0;
}

body,textarea,input,button,select,keygen,legend {
	font: 12px/1.5 "Arial", "Hiragino Sans GB", "Microsoft YaHei ", 微软雅黑,
		"serif";
	color: #333;
	outline: 0;
}

body {
	background: #eee;
	font-size: 12px;
}

.m-selfDefine-catName {
	max-width: 100px;
}

.m-selfDefine-catName {
	left: 0px;
	top: 2px;
	width: auto;
	height: 31px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
	float: left;
	line-height: 31px;
}

.m-selfDefine-catName {
	left: 0px;
	top: 2px;
	width: auto;
	height: 31px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 0px;
	position: relative;
	overflow: hidden;
	float: left;
	line-height: 31px;
}

.m-selfDefine-subCateFunc {
	left: 0px;
	top: 12px;
	width: 1000px;
	height: 19px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px 0px 0px 30px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
	float: left;
}

.m-selfDefine-subCateFunc {
	left: 0px;
	top: 12px;
	width: 1000px;
	height: 19px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px 0px 0px 30px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
	float: left;
}

.m-selfDefine-lessonFunc {
	left: 0px;
	top: 51px;
	width: 236px;
	height: 420px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
}

.m-selfDefine-lessonFunc {
	left: 0px;
	top: 51px;
	width: 236px;
	height: 420px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
}

.m-selfDefine-course3Func {
	left: 256px;
	top: 51px;
	width: 768px;
	height: 426px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px 0px 0px -8px;
	padding: 0px 0px 0px 8px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	overflow: hidden;
}

.m-selfDefine-more {
	left: 1190px;
	top: 17px;
	width: 75px;
	height: 17px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 0px;
	position: absolute;
}

.m-selfDefine-more {
	left: 1190px;
	top: 17px;
	width: 75px;
	height: 17px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 0px;
	position: absolute;
}

a,button {
	cursor: pointer;
}

del,ins,s,a,a:hover {
	text-decoration: none;
}

a,button {
	cursor: pointer;
}

del,ins,s,a,a:hover {
	text-decoration: none;
}

.m-selfDefine-more_a301 {
	display: inline-block;
	width: 100%;
	height: 17px;
}

.m-selfDefine-more_a301_span302 {
	line-height: normal;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 13px;
	color: rgb(51, 51, 51);
	text-align: right;
	vertical-align: middle;
}

[class ^='u-icon-'],[class *=' u-icon-'] {
	font-family: "icon-mooc";
	speak: none;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	text-transform: none;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.u-icon-moreArrow {
	margin-right: 5px;
	-webkit-transform: translateY(1px);
	-moz-transform: translateY(1px);
	-ms-transform: translateY(1px);
	-o-transform: translateY(1px);
	transform: translateY(1px);
	display: inline-block;
}

.u-icon-moreArrow::before {
	content: "\e982";
}

.m-selfDefine-more .u-icon-moreArrow {
	font-size: 10px;
}

.selfDefine-discussFunc-t_div289 {
	left: 1024px;
	top: 52px;
	width: 236px;
	height: 420px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
	background-color: rgb(255, 255, 255);
}

.selfDefine-discussFunc-t_div289_div290 {
	left: 13px;
	top: 15px;
	width: 4px;
	height: 17px;
	z-index: 1;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	background-color: rgb(86, 185, 41);
}

.selfDefine-discussFunc-t_div289_div291 {
	left: 23px;
	top: 11px;
	width: 200px;
	height: 24px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 0px;
	position: absolute;
	line-height: 24px;
}

.selfDefine-discussFunc-t_div289_div293 {
	left: 13px;
	top: 43px;
	width: 216px;
	height: 377px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
}

.discussList-item-f_div294 {
	left: 0px;
	top: 0px;
	width: 216px;
	height: 76px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
}

.discussList-item-f_div294_div295 {
	left: 0px;
	top: 0px;
	width: 216px;
	height: 40px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 20px;
}

.f-thide,.f-nowrp {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-thide,.f-nowrp {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.selfDefine-course3Func-f_div279_a280_div285 {
	left: 12px;
	top: 173px;
	width: 132px;
	height: 17px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 17px;
}

.selfDefine-course3Func-f_div279_a280_div283_span284 {
	line-height: 22px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 14px;
	color: rgb(17, 17, 17);
	text-align: left;
	vertical-align: middle;
}

.lessonCard-list-f_div273_div274 {
	left: 12px;
	top: 0px;
	width: 151px;
	height: 27px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 27px;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.discussList-item-f_div294_div298 {
	left: 0px;
	top: 44px;
	width: 216px;
	height: 16px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 16px;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.f-line,.f-thide {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.discussList-item-f_div294_div298_a299 {
	display: inline-block;
	width: 100%;
	height: 16px;
}

.discussList-item-f_div294_div298_a299_span300 {
	line-height: 16px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 12px;
	color: rgb(153, 153, 153);
	text-align: left;
	vertical-align: middle;
}

.discussList-item-f_div294_div295_a296 {
	display: inline-block;
	width: 100%;
	height: 40px;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.discussList-item-f_div294_div295_a296_span297 {
	line-height: 20px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 14px;
	color: rgb(17, 17, 17);
	text-align: left;
	vertical-align: middle;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.f-2lines {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.selfDefine-discussFunc-t_div289_div291_span292 {
	line-height: 24px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 18px;
	color: rgb(17, 17, 17);
	text-align: left;
	vertical-align: middle;
}

.f-fl {
	float: left;
}

.f-transition {
	-moz-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	-o-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	-webkit-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.selfDefine-course3Func-f_div279 {
	left: 0px;
	top: 0px;
	width: 236px;
	height: 200px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px 10px 20px 5px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
	background-color: rgb(255, 255, 255);
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.f-fl {
	float: left;
}

.selfDefine-course3Func-f_div279_a280 {
	display: inline-block;
	width: 100%;
	height: 200px;
}

.selfDefine-course3Func-f_div279_a280_div281 {
	left: 0px;
	top: 0px;
	width: 236px;
	height: 136px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	overflow: hidden;
}

.selfDefine-course3Func-f_div279_a280_div283 {
	left: 12px;
	top: 142px;
	width: 217px;
	height: 22px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 22px;
}

.selfDefine-course3Func-f_div279_a280_div287 {
	left: 150px;
	top: 173px;
	width: 75px;
	height: 17px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 17px;
}

.selfDefine-course3Func-f_div279_a280_div287_span288 {
	line-height: 17px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 12px;
	color: rgb(153, 153, 153);
	text-align: right;
	vertical-align: middle;
}

.u-icon-person::before {
	content: "\e95d";
}

.selfDefine-course3Func-f_div279_a280_div285_span286 {
	line-height: 17px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 12px;
	color: rgb(153, 153, 153);
	text-align: left;
	vertical-align: middle;
}

img {
	vertical-align: top;
}

.selfDefine-course3Func-f_div279_a280_div281_img282 {
	width: 236px;
	height: 136px;
	border-radius: 0px;
}

.f-scaleSubImg11 img {
	-moz-transition: all 0.3s cubic-bezier(0, 0.5, 0.5, 1) 0s;
	-o-transition: all 0.3s cubic-bezier(0, 0.5, 0.5, 1) 0s;
	-webkit-transition: all 0.3s cubic-bezier(0, 0.5, 0.5, 1) 0s;
	transition: all 0.3s cubic-bezier(0, 0.5, 0.5, 1) 0s;
}

.selfDefine-lessonFunc-i_div256 {
	left: 0px;
	top: 0px;
	width: 236px;
	height: 420px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
	background-color: rgb(255, 255, 255);
}

.selfDefine-lessonFunc-i_div256_div257 {
	left: 0px;
	top: 0px;
	width: 236px;
	height: 420px;
	z-index: 1;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
}

.f-61C5C9 {
	background: #61C5C9 !important;
	opacity: 0.9;
}

.selfDefine-lessonFunc-i_div256_div259 {
	background-color: rgb(97, 197, 201);
	filter: alpha(opacity =     89.0196);
	left: 0px;
	top: 0px;
	width: 236px;
	height: 420px;
	z-index: 2;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	background-color: rgba(97, 197, 201, 0.890196);
}

.selfDefine-lessonFunc-i_div256_div261 {
	left: 8px;
	top: 30px;
	width: 51px;
	height: 3px;
	z-index: 4;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	background-color: rgb(255, 255, 255);
}

.selfDefine-lessonFunc-i_div256_div262 {
	left: 8px;
	top: 39px;
	width: auto;
	height: 20px;
	z-index: 4;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 0px;
	position: absolute;
	line-height: 20px;
}

.selfDefine-lessonFunc-i_div256_div265 {
	left: 8px;
	top: 71px;
	width: 220px;
	height: 66px;
	z-index: 4;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 0px;
	position: absolute;
	line-height: 33px;
}

.f-scaleIcon {
	padding: 0px !important;
}

.selfDefine-lessonFunc-i_div256_div269 {
	left: 0px;
	top: 0px;
	width: 145px;
	height: 145px;
	z-index: 3;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 178px 0px 0px 91px;
	color: rgb(255, 255, 255);
	font-size: 54px;
	position: absolute;
	line-height: 54px;
}

.selfDefine-lessonFunc-i_div256_div272 {
	left: 0px;
	top: 420px;
	width: 236px;
	height: 88px;
	z-index: 3;
	min-width: 0px;
	border-radius: 0px;
	margin: 8px 0px 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
}

.lessonCard-list-f_div273 {
	left: 0px;
	top: 0px;
	width: 236px;
	height: 27px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: relative;
}

.lessonCard-list-f_div273_div277 {
	left: 188px;
	top: 0px;
	width: 36px;
	height: 27px;
	z-index: 0;
	min-width: 0px;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: rgb(0, 0, 0);
	font-size: 16px;
	position: absolute;
	line-height: 27px;
}

.lessonCard-list-f_div273_div277_span278 {
	line-height: 27px;
	display: inline-block;
	width: 100%;
	font-family: arial, helvetica, sans-serif;
	font-size: 13px;
	color: rgb(153, 153, 153);
	text-align: right;
	vertical-align: middle;
}

.lessonCard-list-f_div273_div274_a275 {
	display: inline-block;
	width: 100%;
	height: 27px;
}

.lessonCard-list-f_div273_div274_a275_span276 {
	line-height: 27px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 13px;
	color: rgb(51, 51, 51);
	text-align: left;
	vertical-align: middle;
}

.selfDefine-lessonFunc-i_div256_div269_a270 {
	display: inline-block;
	width: 100%;
	height: 145px;
}

.f-scaleIcon a {
	padding: 178px 0px 0px 91px;
}

.selfDefine-lessonFunc-i_div256_div269_a270_span271 {
	line-height: 54px;
	display: inline-block;
	width: 100%;
	font-size: 54px;
	color: rgb(255, 255, 255);
	text-align: center;
	vertical-align: middle;
}

.u-icon-played::before {
	content: "\e97d";
}

.f-scaleIcon .u-icon {
	width: 54px;
	-moz-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	-o-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	-webkit-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) 0s;
	border-radius: 54px;
}

.selfDefine-lessonFunc-i_div256_div265_a266 {
	display: inline-block;
	width: 100%;
	height: 66px;
}

.selfDefine-lessonFunc-i_div256_div265_a266_span267 {
	line-height: 33px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 24px;
	color: rgb(255, 255, 255);
	text-align: left;
	vertical-align: middle;
}

.f-f1 {
	font-family: "Arial", "Hiragino Sans GB", "Microsoft YaHei ", 微软雅黑,
		"Georgia", "serif";
}

.f-f1 {
	font-family: "Arial", "Hiragino Sans GB", "Microsoft YaHei ", 微软雅黑,
		"Georgia", "serif";
}

.f-f1 {
	font-family: "Arial", "Hiragino Sans GB", "Microsoft YaHei ", 微软雅黑,
		"Georgia", "serif";
}

.selfDefine-lessonFunc-i_div256_div265_a266_span267_div268 {
	margin-top: 7px;
	font-size: 17px;
	line-height: 17px;
}

.selfDefine-lessonFunc-i_div256_div262_a263 {
	display: inline-block;
	width: 100%;
	height: 20px;
}

.selfDefine-lessonFunc-i_div256_div262_a263_span264 {
	line-height: 20px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 17px;
	color: rgb(255, 255, 255);
	text-align: left;
	vertical-align: middle;
}

.selfDefine-lessonFunc-i_div256_div259_a260 {
	display: inline-block;
	width: 100%;
	height: 420px;
}

.selfDefine-lessonFunc-i_div256_div257_img258 {
	width: 236px;
	height: 420px;
	border-radius: 0px;
}

.m-selfDefine-lessonFunc img {
	width: 236px;
	height: 420px;
}

.m-selfDefine-catName_a251 {
	display: inline-block;
	width: 100%;
	height: 31px;
}

.m-selfDefine-catName_a251_span252 {
	line-height: 31px;
	display: inline-block;
	width: 100%;
	font-family: 微软雅黑, "Microsoft YaHei";
	font-size: 24px;
	color: rgb(17, 17, 17);
	text-align: left;
	vertical-align: middle;
}
</style>
</head>

<body>



	<!-- 导航栏 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- 导航栏 -->

	<!-- 侧边栏 -->
	<jsp:include page="sidebar.jsp">
		<jsp:param value="shows" name="pages" />
	</jsp:include>
	<!-- 侧边栏 -->


	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<!-- 		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="carousel slide" id="carousel-176744">
						<ol class="carousel-indicators">
							<li class="active" data-target="#carousel-176744"
								data-slide-to="0"></li>
							<li data-target="#carousel-176744" data-slide-to="1"></li>
							<li data-target="#carousel-176744" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img alt="" src="images/istudybanner_small.jpg" />
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img alt="" src="images/istudybanner_small.jpg" />
								<div class="carousel-caption">
									<h4>Second Thumbnail label</h4>
									<p>Cras justo odio, dNu</p>
								</div>
							</div>
							<div class="item">
								<img alt="" src="images/istudybanner_small.jpg" />
								<div class="carousel-caption">
									<h4>Third Thumbnail label</h4>
									<p>Cras justo odio, mi poe elit.</p>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-176744"
							data-slide="prev"><span
							class="glyphicon glyphicon-chevron-left"></span> </a> <a
							class="right carousel-control" href="#carousel-176744"
							data-slide="next"><span
							class="glyphicon glyphicon-chevron-right"></span> </a>
					</div>
				</div>
			</div>
		</div> -->


		<div class="show-top-grids">


			<!-- <div class="col-sm-10 show-grid-left main-grids">

				<div class="recommended">


					<div class="recommended-grids english-grid">


					
						<div class="recommended-info" style="margin-top:50px;clear: both ;">

							<div class="clearfix"></div>
						</div>

						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">
							<div class="resent-grid-img recommended-grid-img">

							</div>

						</div>

						


						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">
							<div class="resent-grid-img recommended-grid-img">

							</div>
							<div class="resent-grid-info recommended-grid-info">

							</div>
						</div>



						
						<div class="recommended-info" style="margin-top:50px;clear: both ;"
							>

						</div>

						<div class="col-md-2 resent-grid recommended-grid show-video-grid" style="margin: 20px;">

						</div>

						<div style="width: auto;height: 150px;"></div>
						<div style="width:100%;height:250px"></div>



						<div class="clearfix"></div>
					</div>
				</div>
			

			</div> -->


			<div class="clearfix">
				<div id="g-container">
					<div id="g-body">
						<div class="p-index-container">
							<div class="p-index-selfDefineFunc">
								<div class="index-selfDefineFunc-i">
									<div title="" class="index-selfDefineFunc-i_div243"
										id="j-index-selfDefine-box">
										<div class="m-selfDefine-catName">
											<!-- 												<a class="m-selfDefine-catName_a251"
													href="http://www.icourse163.org/category/computer"
													target="_blank"> -->
											<span class="m-selfDefine-catName_a251_span252">计算机</span>
											<!-- 												</a> -->
										</div>

										<%
				List<VO4VideoTypeShowRtn> list_video_type = new Study_video_typeService()
						.findAllVideo_type();
				for (VO4VideoTypeShowRtn vo4Video_type : list_video_type) {
			%>


										<div class="m-selfDefineWithDiscuss-container">

											<div class="m-selfDefine-subCateFunc">
												<!--Regular if74-->
											</div>
											<div class="m-selfDefine-lessonFunc">
												<div class="selfDefine-lessonFunc-i">
													<div title="" class="selfDefine-lessonFunc-i_div256">
														<div title=""
															class="ga-click selfDefine-lessonFunc-i_div256_div257">
															<img width="236" height="420"
																class="selfDefine-lessonFunc-i_div256_div257_img258"
																src="<%=vo4Video_type.getType_pic()%>">
														</div>

														<!-- 蒙版背景图 -->
														<!-- 														<div title=""
															class="f-61C5C9 ga-click selfDefine-lessonFunc-i_div256_div259">
															<a class="selfDefine-lessonFunc-i_div256_div259_a260"
																href="http://www.icourse163.org/learn/PKU-1001663016?tid=1002052006#/learn/content?type=detail&amp;id=1002688150&amp;cid=1002966490"
																target="_blank"></a>
														</div> -->
														<div title=""
															class="selfDefine-lessonFunc-i_div256_div261"></div>
														<div title=""
															class="selfDefine-lessonFunc-i_div256_div262">
															<span
																class="selfDefine-lessonFunc-i_div256_div262_a263_span264">爱学之路之</span>

														</div>
														<br>
														<div title=""
															class="ga-click selfDefine-lessonFunc-i_div256_div265">

															<span
																class="selfDefine-lessonFunc-i_div256_div265_a266_span267"><%=vo4Video_type.getType_name()%>
																<br> <br> <% 
						String user_account = (String)session.getAttribute("user_account");
						if(user_account==null){
						%> <a
																href="study_viewtype_videoBytime.jsp?type_id=<%=vo4Video_type.getType_id()%>"><div
																		class="f-f1 selfDefine-lessonFunc-i_div256_div265_a266_span267_div268">浏览该路径内容</div>
															</span></a>
															<% 
							}else if(user_account!=null){
							%>
															<a
																href="study_join.jsp?type_id=<%=vo4Video_type.getType_id()%>"><div
																	class="f-f1 selfDefine-lessonFunc-i_div256_div265_a266_span267_div268">学习该路径</div>
																</span> <%
							}
							%>
															
														</div>


													</div>
												</div>
											</div>


											<!-- 视频 -->
											<div class="m-selfDefine-course3Func">
												<!--Regular if76-->
												<!--Regular list-->

												<%
							List<VO4Video> list_video = new Study_videoService()
										.findTopSixVideoByType(Integer.parseInt(vo4Video_type.getType_id()));
								Iterator<VO4Video> it = list_video.iterator();
						%>
												<%
							VO4Video vov = null;
								while (it.hasNext()) {
									vov = it.next();
								if (vov == null) {
									vov = new VO4Video();
								}
								
								

							
						%>

												<div class="selfDefine-course3Func-f">
													<div title=""
														class="f-fl f-transition ga-click f-scaleSubImg11 selfDefine-course3Func-f_div279">
														<a class="selfDefine-course3Func-f_div279_a280"
															href="video_single.jsp?video_id=<%=vov.getVideo_id()%>"
															target="_blank"><div title=""
																class="selfDefine-course3Func-f_div279_a280_div281">
																<!-- 图片 -->
																<img width="236" height="136"
																	class="selfDefine-course3Func-f_div279_a280_div281_img282"
																	alt="<%=vov.getVideo_pic()%>"
																	src="<%=vov.getVideo_pic()%>">
															</div>
															<div title=""
																class="selfDefine-course3Func-f_div279_a280_div283">
																<span
																	class="f-thide selfDefine-course3Func-f_div279_a280_div283_span284"><%=vov.getVideo_name()%></span>
															</div>
															<div title=""
																class="f-thide selfDefine-course3Func-f_div279_a280_div285">
																<span
																	class="selfDefine-course3Func-f_div279_a280_div285_span286"><%=vov.getVideo_author()%></span>
															</div>
															<div title=""
																class="selfDefine-course3Func-f_div279_a280_div287">
																<span
																	class="selfDefine-course3Func-f_div279_a280_div287_span288"><span
																	class="u-icon-person"></span>&nbsp;&nbsp;<%=vov.getVideo_count()%></span>
															</div> </a>
													</div>
												</div>



												<%
				}
			%>

												<%
						List<VO4Article> list_article = new Study_articleService()
									.findTopFiveArticleByType(Integer.parseInt(vo4Video_type.getType_id()));
							Iterator<VO4Article> it2 = list_article.iterator();
							
					%>





											</div>
											<!--文章-->
											<div class="selfDefine-discussFunc-t">
												<div title="" class="selfDefine-discussFunc-t_div289">
													<div title=""
														class="selfDefine-discussFunc-t_div289_div290"></div>
													<div title=""
														class="selfDefine-discussFunc-t_div289_div291">
														<span
															class="selfDefine-discussFunc-t_div289_div291_span292">
															爱学文章</span>
													</div>
													<div title=""
														class="selfDefine-discussFunc-t_div289_div293">
														<!--Regular if78-->
														<!--Regular list-->

														<%
										VO4Article vo = null;
						while (it2.hasNext()) {
								vo = it2.next();
															if (vo == null) {
								vo = new VO4Article();
							}
							

					%>


														<div class="discussList-item-f">
															<div title="" class="discussList-item-f_div294">
																<div title=""
																	class="ga-click discussList-item-f_div294_div295">
																	<a class="discussList-item-f_div294_div295_a296"
																		href="article_single.jsp?article_id=<%=vo.getArticle_id()%>"
																		target="_blank"><span
																		class="f-2lines discussList-item-f_div294_div295_a296_span297"><%=vo.getArticle_name()%></span>
																	</a>
																</div>
																<div title=""
																	class="f-thide ga-click discussList-item-f_div294_div298">
																	<a class="discussList-item-f_div294_div298_a299"
																		href="article_single.jsp?article_id=<%=vo.getArticle_id()%>"
																		target="_blank"><span
																		class="discussList-item-f_div294_div298_a299_span300"><%=vo.getArticle_author()%></span>
																	</a>
																</div>
															</div>
														</div>

					<%
					}
					 %>


													</div>
												</div>
											</div>
											<!-- 											<div class="m-selfDefine-more">
												<a class="m-selfDefine-more_a301"
													href="http://www.icourse163.org/category/computer"
													target="_blank"><span
													class="m-selfDefine-more_a301_span302">查看全部&nbsp;<span
														class="u-icon-moreArrow"></span>
												</span>
												</a>
											</div> -->
										</div>
										
										
										
										
																													<%
				}
			%>
										

										




									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- 底部栏 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- 底部栏 -->

	</div>
	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a></li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a></li>
		</ul>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>



</html>