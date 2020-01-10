
<!DOCTYPE html>
<!--[if IE 7]><html lang="ru" class="ie ie7"><![endif]-->
<!--[if IE 8]><html lang="ru" class="ie ie8"><![endif]-->
<html lang="ru" <head><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info = {"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"d551b32b56","applicationID":"110646192","transactionName":"M1AEMhRVX0RXVEJbDQoaJzU2G1VSQlZfXhRWGwcVFkw=","queueTime":0,"applicationTime":105,"agent":"","atts":""}</script><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"d551b32b56",applicationID:"110646192"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1158.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script><meta name="viewport" content="width=device-width, initial-scale=1" />

<title>
	Немецкая овчарка Собаки породы - Бесплатное векторное изображение в формате AI и EPS. 
</title>

<link href="https://fonts.googleapis.com/css?family=Ubuntu:400,300,700,500" rel="stylesheet" type="text/css" /><link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet" type="text/css" /><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />


<link href="/css_novi/bootstrap.min.css?v=2" rel="stylesheet" />

<link rel="canonical" href="https://www.vectorportal.com/ru/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9/%D0%A1%D1%82%D0%BE%D0%BA%D0%92%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BE%D0%B2/%D0%96%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D0%B5/%D0%9D%D0%B5%D0%BC%D0%B5%D1%86%D0%BA%D0%B0%D1%8F-%D0%BE%D0%B2%D1%87%D0%B0%D1%80%D0%BA%D0%B0-%D0%A1%D0%BE%D0%B1%D0%B0%D0%BA%D0%B8-%D0%BF%D0%BE%D1%80%D0%BE%D0%B4%D1%8B/25258.aspx" />


<!--[if lt IE 9]>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>

      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
<meta name="Description" content="Трафарет искусство немецкая овчарка. Монохромный векторная графика собака породы." /></head>
<body>
<header>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="inner_header" class="col-xs-12 col-sm-12">
<div class="col-xs-12 col-sm-12 inner_logo text-left">
<a href="/"><img src="/images_novi/inner_logo.png" alt="" class="img-responsive"></a>
</div>
</div>
<div class="col-xs-12 col-sm-12 pad_0 menu">
<nav class="navbar navbar-default navbar-inverse">

<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>

<div class="collapse pad_0 navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav text-center dropdown-onhover">
<li><a href="/ru/"> Главная </a></li>
<li class="dropdown-short">
<a data-toggle="dropdown" href="javascript:void(0);" class="dropdown-toggle">Bекторы <span class="caret"></span></a>
<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
<li class="dropdown-right-onhover no-fix">
<a href="https://www.vectorportal.com/ru/СтокВекторов/" id="ucMeni1_stockvectors" data-toggle="collapse" data-target="#id_1" class="dropdown-toggle collapsed hidden-xs">Сток Векторов </a>
<a style="float: none;" class="col-xs-9 hidden-sm hidden-md hidden-lg" href="/stockvectors">Сток Векторов </a>
<a href="javascript:;" style="margin-top: -30px;" data-toggle="collapse" data-target="#id_1" class="dropdown-toggle collapsed pull-right col-xs-3 hidden-sm hidden-md hidden-lg">&nbsp;</a>
<ul class="dropdown-menu dropdown-wide collapse" id="id_1">
<li> <a href='https://www.vectorportal.com/ru/СтокВекторов/спортивные-логотипы/'>Cпортивные логотипы</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Спорт/'>Виды спорта</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Военное/'>Военные и Оружейные</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Дополнительно/'>Дополнительно</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Еда-напитки/'>Еда и Напитки</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Животные/'>Животные</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Знаки-и-символы/'>Знаки и символы</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Иконки/'>Иконки</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Клип-арт/'>Клип-Арт</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Люди/'>Люди</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Средства-передвижения-транспорт/'>Машины и мотоциклы</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Музыка/'>Музыка</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Растительные/'>Растительные</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Религиозные/'>Религиозные</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Рождественские/'>Рождественские</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Силуэты/'>Силуэты</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Различное/'>Сток Векторов</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Технологии/'>Технологии</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Трайбл-Тату/'>Трайбл</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Флаги-и-карты/'>Флаги и карты</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Абстрактные-фоны/'>Фоны</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Черепа/'>Черепа</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Шаблоны-для-Illustrator/'>Шаблоны для Illustrator</a></li><li> <a href='https://www.vectorportal.com/ru/СтокВекторов/Элементы-логотипа/'>Элементы логотипа</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="../../../../../?sort=FILE_DOWNLOADS" id="ucMeni1_popular">Популярный</a></li>
<li><a href="../../../../../?sort=FILE_DATED" id="ucMeni1_latest">Последний</a></li>
</ul>
<ul class="nav navbar-nav navbar-right vector_btn">
<li>
</li>
<li>
<div class="fb-like" data-href="https://www.vectorportal.com" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
</li>
<li class="btn"><a class=' btn-default' href='/ru/Contact/'>Контакты</a></li>
</ul>
</div>

</nav>
</div>
</header>
<div id="middle" class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 hidden-xs text-center benner">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4767662663033227" data-ad-slot="1323339902" data-ad-format="auto"></ins>
<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
</div>
<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 grid_sec">
<div class="col-xs-12 category_top pad_0">
<h1>Немецкая овчарка Собаки породы</h1>
<div class="search pull-right">
<form class="navbar-form find-now-form text-center" role="search" action="/filter_search.aspx?lang=ru" method="post">
<div class="form-group">
<input type="text" class="form-control" name="q" placeholder="Поиск">
</div>
<button type="submit" class="btn btn-default text-uppercase">
<span class="glyphicon glyphicon-search" aria-hidden="true"></span> Поиск
</button>
</form>
</div>
</div>
<div class="col-xs-12 col-md-4 col-sm-6 pad_0 pattern">
<a href="#"><img width='100%' alt='Немецкая овчарка Собаки породы' class='img-responsive' src='https://www.vectorportal.com/img_novi/german-shepherd-dog-vector.jpg' /></a>
<div class="social_icon text-center">
<a href="https://twitter.com/home?status=Currently%20reading%2Fhttps://www.vectorportal.com/ru/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9/%D0%A1%D1%82%D0%BE%D0%BA%D0%92%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BE%D0%B2/%D0%96%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D0%B5/%D0%9D%D0%B5%D0%BC%D0%B5%D1%86%D0%BA%D0%B0%D1%8F-%D0%BE%D0%B2%D1%87%D0%B0%D1%80%D0%BA%D0%B0-%D0%A1%D0%BE%D0%B1%D0%B0%D0%BA%D0%B8-%D0%BF%D0%BE%D1%80%D0%BE%D0%B4%D1%8B/25258.aspx" target="_blank"><img src='/images_novi/twit_icon.png' alt='' class='img-responsive icon' /></a>
<a href="https://www.facebook.com/share.php?u=https://www.vectorportal.com/ru/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9/%D0%A1%D1%82%D0%BE%D0%BA%D0%92%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BE%D0%B2/%D0%96%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D0%B5/%D0%9D%D0%B5%D0%BC%D0%B5%D1%86%D0%BA%D0%B0%D1%8F-%D0%BE%D0%B2%D1%87%D0%B0%D1%80%D0%BA%D0%B0-%D0%A1%D0%BE%D0%B1%D0%B0%D0%BA%D0%B8-%D0%BF%D0%BE%D1%80%D0%BE%D0%B4%D1%8B/25258.aspx" target="_blank"><img src='/images_novi/face_icon.png' alt='' class='img-responsive icon' /></a>
<a href="https://pinterest.com/pin/create/button/?url=https://www.vectorportal.com/ru/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D1%8B%D0%B9/%D0%A1%D1%82%D0%BE%D0%BA%D0%92%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BE%D0%B2/%D0%96%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D0%B5/%D0%9D%D0%B5%D0%BC%D0%B5%D1%86%D0%BA%D0%B0%D1%8F-%D0%BE%D0%B2%D1%87%D0%B0%D1%80%D0%BA%D0%B0-%D0%A1%D0%BE%D0%B1%D0%B0%D0%BA%D0%B8-%D0%BF%D0%BE%D1%80%D0%BE%D0%B4%D1%8B/25258.aspx&media=https%3A%2F%2Fwww.vectorportal.com%2Fimg_novi%2Fgerman-shepherd-dog-vector.jpg&description=Немецкая овчарка Собаки породы" target="_blank"><img src='/images_novi/print_icon.png' alt='' class='img-responsive icon' /></a>
</div>
</div>
<div class="col-xs-12 col-md-4 col-sm-6 pad_0 detail_sponsored-v2"><div class="col-xs-12 col-sm-12 pad_0 category_sponsored">
<p> Cпонсорские векторы Shutterstock </p>
<ul>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">
      /* Fetch functions */

      var API_URL = 'https://api.shutterstock.com/v2';

      // Base 64 encode Client ID and Client Secret for use in the Authorization header
      function encodeAuthorization() {
        var clientId = "6f915b172d663c1fd760";
        var clientSecret ="b8c3961023dd0c3e625c75889239e1fc1a12165e";

        if (!clientId || !clientSecret) {
          $('#collapseAuthentication').collapse('show');
          alert('Client id and/or client secret are missing in the API key section, with out these you wont be able to contact the API.');
          return;
        }
        return 'Basic ' + window.btoa(clientId + ':' + clientSecret);
      }

      // Search media by type
      function search(opts, mediaType) {
        var $container = $('#' + mediaType + '-search-results');
        var createComponentFunc = mediaType === 'image'
          ? renderImageComponent
          : renderVideoComponent;

        authorization = encodeAuthorization();
        if (!authorization) return;

        var jqxhr = $.ajax({
          url: API_URL + '/' + mediaType + 's/search',
          data: opts,
          headers: {
            Authorization: authorization
          }
        })
        .done(function(data) {
          if (data.total_count === 0) {
            $container.append('<p>No Results</p>');
            return;
          }

          var minHeightCSS = /horizontal/.test(opts) ? 'horizontal-image' : 'vertical-image';
          $.each(data.data, function(i, item) {
            var component = createComponentFunc(item, minHeightCSS);
            $container.append(component);
          });

          // Reduce the options area to show the results
          if (window.innerWidth < 600) $('.collapse.in').collapse();
        })
        .fail(function(xhr, status, err) {
          alert('Failed to retrieve ' + mediaType + ' search results:\n' + JSON.stringify(xhr.responseJSON, null, 2));
        });

        return jqxhr;
      }

      // Fetch media details
      function fetchDetails(event) {
        event.preventDefault();

        var id = event.target.id;
        var mediaType = event.target.tagName === 'IMG' ? 'image' : 'video';
        var authorization = encodeAuthorization();

        if (!id || !authorization) return;

        renderLoadingDetails(id);

        var jqxhr = $.ajax({
            url: API_URL + '/' + mediaType + 's/' + id,
            headers: {
              Authorization: authorization
            }
          })
          .done(function(data) {
            console.log('JSON response', data);

            if (!data || !data.assets || !data.assets) return;

            renderDetails(data);
          })
          .fail(function(xhr, status, err) {
            alert('Failed to retrieve ' + mediaType + ' details:\n' + JSON.stringify(xhr.responseJSON, null, 2));
          });

        return jqxhr;
      }

      /* Render functions */

      // Create image wrapper component
   
      // Create video wrapper component


      // Display media details in a modal
      function renderDetails(data) {
       

        if (data.media_type === 'image') {
          var thumbWrapper = $('<div>');
          var thumbnail = $('<img>');
          var link = $('a');
          $(link)
            .attr('href', data.assets.preview.url)
            .attr('title', data.description);
          
          $(thumbnail)
            .attr('id', data.id)
            .attr('src', data.assets.preview.url)
            .attr('title', data.description);
            

          $(thumbWrapper)
            .addClass('thumbnail-crop')
           
            .append(thumbnail);

       
        } 


      }

      // Render a loading spinner while we wait for image/video details
      function renderLoadingDetails(id) {
        var detailTemplate = $('.detail-template');

        detailTemplate.find('.modal-body').html('<i class="fa fa-5x fa-spinner fa-spin"></i>')
        detailTemplate.find('h3').html('Loading ' + id + '...');
        detailTemplate.modal('show');
      }

      // Simulate user chooses an image/video
      function renderServerSideInstructions() {
        alert('Here you will need server-side code to purchase and download the un-watermarked image. See the documentation at https://developers.shutterstock.com/guides/licensing');
      }

      // Add categories to the category <select>
      function renderCategories() {
        var categorySelect = $('[name="category"]')[0];
        ['Abstract', 'Animals/Wildlife', 'Backgrounds/Textures', 'Beauty/Fashion', 'Buildings/Landmarks', 'Business/Finance', 'Celebrities', 'Editorial', 'Education', 'Food and Drink', 'Healthcare/Medical', 'Holidays', 'Illustrations/Clip-Art', 'Industrial', 'Interiors', 'Miscellaneous', 'Model Released Only', 'Nature', 'Objects', 'Parks/Outdoor', 'People', 'Religion', 'Science', 'Signs/Symbols', 'Sports/Recreation', 'Technology', 'The Arts', 'Transportation', 'Vectors', 'Vintage'].map(function(category) {
          categorySelect.add(new Option(category, category));
        });
      }

      function setDefaultPerPage() {
        var imagesWhichFitOnThePage = (window.innerWidth * window.innerHeight) / (300 * 300);
        var bestPerPage;

     
        if (bestPerPage) {
          $('select[name=per_page]').val(bestPerPage);
        }
      }

      function setColor(target) {
        $("input[name=color]").val(target.value);
      }

      function useColorsInNatureIfSearchingOnlyByColor (opts) {
        if (/color/.test(opts) & !/category/.test(opts) && !/query/.test(opts)){
          opts += '&category=Nature';
        }
        return opts;
      }
function renderImageComponent(image, minHeightCSS) {
    if (!image || !image.assets || !image.assets.large_thumb || !image.assets.large_thumb.url) return;

    var wrapper = $('<li>');
    var thumbWrapper = $('<div>');
    var thumbnail = $('<img>');
    var description = $('<p>');
     var link = $('<a>');
  
   $(link)
     
       .attr('href', 'http://shutterstock.7eer.net/c/46633/43068/1305?u='+  encodeURIComponent("http://www.shutterstock.com/pic.mhtml?id="+ image.id))
       .attr('title',image.description)
       .attr('target','_blank')
       .append(thumbnail);
                  
    $(thumbnail)
        .attr('src', image.assets.large_thumb.url)
        .attr('title', image.description)
        .addClass('responsive');

    $(thumbWrapper)
        .addClass('slika')
        .append(link);

    $(wrapper)
       .append(thumbWrapper);

    return wrapper;
}

      // On Page Load
      $(function() {
      
        setDefaultPerPage();

        $('#search-form').submit(function(e) {
          e.preventDefault();

          // Clear current media results
          $('#image-search-results, #video-search-results').empty();

          // Serialize form options
          var opts = $('input').filter(function() {
                    
          }).serialize();

          opts += '&' +"query=German,Shepherd,dog,breed,,&safe=true&image_type=vector&page=1&per_page=9&sort=popular"

          opts = useColorsInNatureIfSearchingOnlyByColor(opts);
          console.log('Requesting: ' + opts)

          // Search and display images
          search(opts, 'image');

          // Reduce # videos to better fit on the page
          var perPage = 10;
      

          // Search and display videos
    

          return false;
        });

        // Load results on page load
        $('#search-form').submit();

      });
    </script>
<style>
      .vertical-image {
        min-height: 170px;
      }

      .horizontal-image {
        min-height: 160px;
      }

      div.image-float-wrapper {
        padding-bottom: 10px;
        padding-right: 10px;
        float: left;
        text-align: center;
      }

      div.video-wrapper {
        padding: 5px;
        text-align: center;
      }

      .shutterstock-logo {
        width: 50%;
      }

      /* Crop image ID */

      div.thumbnail-crop {
        overflow: hidden;
        margin: 0 auto;
      }

      /* Details area */

      div.detail-template .modal-body div {
        text-align: center;
      }

      div.detail-template img, div.detail-template video {
        width: 100%;
      }
      
      .responsive {
    max-width: 100%;
    height: auto;
    }
    </style>
</head>
<body>
<form id="search-form"></form>
<div id="image-search-results"></div>
</ul></div>
<a class='btn btn-success' href='https://www.vectorportal.com/ru/Немецкая-овчарка-Собаки-породы/25258/download.html' target='_blank'><i class='mdi mdi-download'></i> Загрузить</a>
</div>
<div class="col-xs-12 col-md-4 col-sm-12 detail-v2 pad_0"><div class="col-xs-12 col-sm-12 pad_0 description">
<div class="col-xs-12 col-sm-12 pad_0">
<div class="panel panel-default">
<div class="panel-heading"> Описание</div>
<div class="panel-body">
Трафарет искусство немецкая овчарка. Монохромный векторная графика собака породы.
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 pull-right pad_0">
<div class="panel panel-default">
<div class="panel-heading">Категории</div>
<div class="panel-body">
<a href='/ru/СтокВекторов/Животные/'>Животные</a>
</div>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 pad_0 description">
<div class="col-xs-12 col-sm-12 pad_0">
<div class="panel panel-default">
<div class="panel-heading"> Характеристики</div>
<div class="panel-body">
<ul class="add_info">
<li><i class="mdi mdi-vector-square"></i>587 Kb</li>
<li><i class="mdi mdi-calendar-today"></i> 16.07.2017</li>
<li><i class="mdi mdi-download"></i>896</li>
<li><i class="mdi mdi-account"></i>Vectorportal.com</li>
</ul>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 pull-right pad_0">
<div class="panel panel-default">
<div class="panel-heading"> Тэги</div>
<div class="panel-body">
<ul class="list-group">
<li><a class='list-group-item' href='/ru/бесплатный-вектор/%d1%81%d0%be%d0%b1%d0%b0%d0%ba%d0%b0-%d0%b6%d0%b8%d0%b2%d0%be%d1%82%d0%bd%d0%be%d0%b5/'>собака животное</a></li><li><a class='list-group-item' href='/ru/бесплатный-вектор/%d0%bd%d0%b5%d0%bc%d0%b5%d1%86%d0%ba%d0%b8%d0%b9-%d0%bf%d0%b0%d1%81%d1%82%d1%83%d1%85/'> немецкий пастух</a></li><li><a class='list-group-item' href='/ru/бесплатный-вектор/%d0%9f%d0%ad%d0%a2/'> ПЭТ</a></li><li><a class='list-group-item' href='/ru/бесплатный-вектор/%d0%bb%d0%be%d0%b3%d0%be%d1%82%d0%b8%d0%bf/'> логотип</a></li><li><a class='list-group-item' href='/ru/бесплатный-вектор/%d1%82%d1%80%d0%b0%d1%84%d0%b0%d1%80%d0%b5%d1%82-%d0%b8%d1%81%d0%ba%d1%83%d1%81%d1%81%d1%82%d0%b2%d0%be/'> трафарет искусство</a></li><li><a class='list-group-item' href='/ru/бесплатный-вектор/%d0%bc%d0%be%d0%bd%d0%be%d1%85%d1%80%d0%be%d0%bc%d0%bd%d1%8b%d0%b9/'> монохромный</a></li><li><a class='list-group-item' href='/ru/бесплатный-вектор/%d1%87%d0%b5%d1%80%d0%bd%d1%8b%d0%b9-%d0%b8-%d0%b1%d0%b5%d0%bb%d1%8b%d0%b9/'> черный и белый</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-xs-12 category_top pad_0">
<div class="panel  description">
<div class="panel-body">
<ul class="list-group">
</ul>
</div>
</div>
</div>
<div class="col-xs-12 category_top pad_0">
<h2> Относящиеся бесплатные векторы</h2>
<ul class="og-grid">
<li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Силуэт-гусеницы/36445.aspx"> <img class='img-responsive' src='/img_novi/caterpillar-freesvg..jpg' alt='Силуэт гусеницы' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Лев-Векторные-графические-картинки/27461.aspx"> <img class='img-responsive' src='/img_novi/lion-clip-art-6vectorportal.jpg' alt='Лев Векторные графические картинки' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/БАБОЧКА-ВЕКТОРНЫЙ-ФОРМАТ-ИЗОБРАЖЕНИЯ/10010.aspx"> <img class='img-responsive' src='/img_novi/Butterfly_vector_format_image_10010.jpg' alt='БАБОЧКА ВЕКТОРНЫЙ ФОРМАТ ИЗОБРАЖЕНИЯ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/МЕДВЕДЬ-ВЕКТОР-СИЛУЭТ/12565.aspx"> <img class='img-responsive' src='/img_novi/bear-vector_12565.jpg' alt='МЕДВЕДЬ ВЕКТОР СИЛУЭТ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/ЗМЕЯ-КОБРА/23414.aspx"> <img class='img-responsive' src='/img_novi/cobra-snake-graphics.jpg' alt='ЗМЕЯ КОБРА' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Большая-белая-акула-свободный-вектор/5871.aspx"> <img class='img-responsive' src='/img_novi/s-sharkcf1_5871.jpg' alt='Большая белая акула свободный вектор' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Ядовитая-змея-векторное-изображение/26497.aspx"> <img class='img-responsive' src='/img_novi/venomous-snake.jpg' alt='Ядовитая змея векторное изображение' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Силуэт-собаки-Доберманн/36642.aspx"> <img class='img-responsive' src='/img_novi/dog-dobermann-clipart-vector.jpg' alt='Силуэт собаки Доберманн' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Набор-векторов-бабочек/8784.aspx"> <img class='img-responsive' src='/img_novi/25 Abstract Butterflies in Vector_8784.jpg' alt='Набор векторов бабочек' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Кенгуру-векторной-графики/25333.aspx"> <img class='img-responsive' src='/img_novi/kangaroo-baby-vectorportal.jpg' alt='Кенгуру векторной графики' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Крыса-силуэт-клип-искусства/36418.aspx"> <img class='img-responsive' src='/img_novi/rat-silhouette--vector-freesvg.org.jpg' alt='Крыса силуэт клип искусства' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Орел-головной-вектор-VP/9273.aspx"> <img class='img-responsive' src='/img_novi/eagle-free-vector-vp1_9273.jpg' alt='Орел головной вектор VP' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/КАРП-ВЕКТОРНАЯ-ГРАФИКА/11651.aspx"> <img class='img-responsive' src='/img_novi/carp.ai_1_11651.jpg' alt='КАРП ВЕКТОРНАЯ ГРАФИКА' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/ГОЛУБОЙ-ДЕЛЬФИН-ВЕКТОРНОЕ-ИЗОБРАЖЕНИЕ/10154.aspx"> <img class='img-responsive' src='/img_novi/vectorportal_dolphin_sea_free_vector_10154.jpg' alt='ГОЛУБОЙ ДЕЛЬФИН-ВЕКТОРНОЕ ИЗОБРАЖЕНИЕ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Мужчина-Лев-с-большой-гривой/30882.aspx"> <img class='img-responsive' src='/img_novi/lion-graphic-art-vector(2).jpg' alt='Мужчина Лев с большой гривой' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Бородавочник-векторное-изображение/32620.aspx"> <img class='img-responsive' src='/img_novi/hog-vectorportal.jpg' alt='Бородавочник векторное изображение' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Сова-сидящая-на-ветке/33908.aspx"> <img class='img-responsive' src='/img_novi/owl-sitting-on-tree-branch-vector.jpg' alt='Сова, сидящая на ветке' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/РЕВУЩИЙ-ЛЕВ-ВЕКТОРНОЕ-ИЗОБРАЖЕНИЕ/12931.aspx"> <img class='img-responsive' src='/img_novi/lion-image-vectorportal.jpg' alt='РЕВУЩИЙ ЛЕВ-ВЕКТОРНОЕ ИЗОБРАЖЕНИЕ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/БАБОЧКА-ИСКУССТВА-ВЕКТОР/11364.aspx"> <img class='img-responsive' src='/img_novi/butterfly-vector-vectorportal_11364.jpg' alt='БАБОЧКА ИСКУССТВА ВЕКТОР' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Морж-векторные-картинки/32960.aspx"> <img class='img-responsive' src='/img_novi/walrus-clipart-vectorportal.jpg' alt='Морж векторные картинки' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Собака-породы-мастиф/32033.aspx"> <img class='img-responsive' src='/img_novi/mastiff-dog-vector.jpg' alt='Собака породы мастиф' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/ФЛАМИНГО-ВЕКТОРНЫЕ-КАРТИНКИ/13915.aspx"> <img class='img-responsive' src='/img_novi/pixel77-free-vector-bird-10.jpg' alt='ФЛАМИНГО ВЕКТОРНЫЕ КАРТИНКИ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Логотип-векторный-вектор-фокса/35486.aspx"> <img class='img-responsive' src='/img_novi/fox-graphic-art-vector.jpg' alt='Логотип векторный вектор фокса' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/СОБАКА-ЛОГОТИП/23578.aspx"> <img class='img-responsive' src='/img_novi/dog-animal-pet.jpg' alt='СОБАКА ЛОГОТИП' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Милая-собака/24475.aspx"> <img class='img-responsive' src='/img_novi/happy-dog-vector.jpg' alt='Милая собака' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/ЧЕРНЫЙ-ВОРОН/23120.aspx"> <img class='img-responsive' src='/img_novi/black-crow.jpg' alt='ЧЕРНЫЙ ВОРОН' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Белоголовый-орлан/25061.aspx"> <img class='img-responsive' src='/img_novi/eagle-bird-art-vectorportal.jpg' alt='Белоголовый орлан' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/ЧЕРНО-БЕЛЫЕ-СОБАКИ-ВЕКТОРНОЕ-ИЗОБРАЖЕНИЕ/13326.aspx"> <img class='img-responsive' src='/img_novi/dog-vectorportal-image-3.jpg' alt='ЧЕРНО-БЕЛЫЕ СОБАКИ ВЕКТОРНОЕ ИЗОБРАЖЕНИЕ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Кашалота/36678.aspx"> <img class='img-responsive' src='/img_novi/sperm-whale-vector.jpg' alt='Кашалота' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/СЛОН-С-БИВНЯМИ/19839.aspx"> <img class='img-responsive' src='/img_novi/elephant-clipart.jpg' alt='СЛОН С БИВНЯМИ' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/EAGLE-CREST-КАРТИНКИ-ВЕКТОР/14386.aspx"> <img class='img-responsive' src='/img_novi/eagle-25-publicdomainvector.jpg' alt='EAGLE CREST КАРТИНКИ ВЕКТОР' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Орлиный-векторклип-искусства/8070.aspx"> <img class='img-responsive' src='/img_novi/eagle-feather-vectorportal.jpg' alt='Орлиный векторклип искусства' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Морских-кораллов-векторной-графики/31209.aspx"> <img class='img-responsive' src='/img_novi/sea-corals-nature-clipart.jpg' alt='Морских кораллов векторной графики' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/РОЗОВЫЙ-СЛОН/23400.aspx"> <img class='img-responsive' src='/img_novi/elephant-ocal-image.jpg' alt='РОЗОВЫЙ СЛОН' /></a></li><li class='inner-grid'><a href="https://www.vectorportal.com/ru/бесплатный/СтокВекторов/Животные/Мустанг-свободный-вектор-2/6274.aspx"> <img class='img-responsive' src='/img_novi/s-mustang_free_vector_6274.jpg' alt='Мустанг свободный вектор 2' /></a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-12 col-md-12 pagination_sec pad_0"> </div>
</div>
<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3  right_row">
<div class="banner-space-2">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<ins class="adsbygoogle" style="display:inline-block;width:300px;height:600px" data-ad-client="ca-pub-4767662663033227" data-ad-slot="2939673906"></ins>
<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
</div>
<div class="banner-space-2">
<a target="_blank" href="https://shutterstock.7eer.net/c/46633/315486/1305">
<img src="/images/vp-banner-ru.jpg" border="0" alt="Get Started Now With Shutterstock" width="300" height="250" />
</a>
<img height="0" width="0" src="https://shutterstock.7eer.net/c/46633/315486/1305" style="position:absolute;visibility:hidden;" border="0" />
</div>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12">
<div class="col-xs-3 col-sm-3"></div>
<div class="col-xs-6 col-sm-6">
<div id="note1"></div>
<div id="load"></div></div>
<div class="col-xs-3 col-sm-3"></div>
</div>
<footer>
<div id="footer" class="col-xs-12 col-sm-12 pad_0">
<form class="form-inline" id="ajax-contact-form" method="post" action="">
<div class="form-group">
<h3>Подпишитесь сегодня и получите 100 свободных векторов</h3>
<div class="input-group  text-left">
<input type="text" class="fild2 form-control" name="name" placeholder="Введите адрес электронной почты">
</div>
</div>
<button type="submit" class="btn btn-default">Подписаться Сейчас</button>
<a href="#" id="back-to-top">
<img src="/images_novi/up_arrow.png" alt="" class="img-responsive up_arrow">
</a>
</form>
<div class="col-xs-12 col-sm-12 footer_bottom pad_0">
<div class="col-xs-12 col-sm-5 footer_box">
<h3>О нас</h3>
<p>Мы создаем бесплатные ресурсы векторов, которые могут быть использованны дизайнерами в коммерческих проектах. Мы также распространяем бесплатные векторы других художников, которые желают продемонстрировать свои работы нашим посетителям. Vectorportal был неоднократно включен в топ 10 лучших бесплатных ресурсов векторов, по мнению различных сайтов графического дизайна.</p>
</div>
<div class="col-xs-12 col-sm-2 footer_box">
<h3>Сылки сайтов</h3>
<ul>
<li><a target="_blank" href="http://blog.vectorportal.com/"> Blog</a></li>
<li><a href="/ru/copyright/">Отметка об авторском праве</a></li>
<li><a href="/ru/media/">Пресса</a></li>
<li><a href="/ru/Contact/">Контакты</a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-2 footer_box">
<h3>Язык</h3>
<ul>
<li><a href="https://www.vectorportal.com/">English</a></li>
<li><a href="https://www.vectorportal.com/es/">Español</a></li>
<li><a href="https://www.vectorportal.com/it/">Italiano</a></li>
<li><a href="https://www.vectorportal.com/pt/">Português</a></li>
<li><a href="https://www.vectorportal.com/de/">Deutsch</a></li>
<li><a href="https://www.vectorportal.com/ru/">Русский</a></li>
<li><a href="https://www.vectorportal.com/fr/">Français</a></li>
<li><a href="https://www.vectorportal.com/tr/">Türkçe</a></li>
<li><a href="https://www.vectorportal.com/sv/">Svenska</a></li>
<li><a href="https://www.vectorportal.com/nl/">Nederlands</a></li>
<li><a href="https://www.vectorportal.com/ro/">Romana</a></li>
<li><a href="https://www.vectorportal.com/pl/">Polski</a></li>
<li><a href="https://www.vectorportal.com/no/">Norsk</a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-2 footer_box">
<h3>Присоединитесь к нам на...</h3>
<ul>
<li><a target="_blank" href="https://www.facebook.com/freevectorgraphics/">Facebook</a></li>
<li><a target="_blank" href="https://twitter.com/vectorportal">Twitter</a></li>
<li><a target="_blank" href="http://www.vectorsforum.com/">Forum</a></li>
<li><a target="_blank" href="https://www.flickr.com/photos/33678919@N07/">Flickr</a></li>
<li><a target="_blank" href="https://www.behance.net/vectorportal">Behance</a></li>
<li><a target="_blank" href="https://pinterest.com/vectorportal/">Pinterest</a></li>
<li><a target="_blank" href="https://dribbble.com/vectorportal">Dribbble</a></li>
</ul>
</div>
<div class="col-xs-12 col-sm-12">
<div class="copy_txt">&copy; 2005-2019 Vectorportal.com</div>
<div class="privacy"><a href="/privacy/">Политика конфиденциальности</div>
</div>
</div>
</div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function()
{
    $("#ajax-contact-form").submit(function(e){
		
        $('#load').append('<center><img src="/images/ajax-loader.gif" alt="Currently Loading" id="loading" /></center>');
		  e.preventDefault();
        var fem = $(this).serialize(),
    		note = $('#note1');
	
        $.ajax({
            type: "POST",
            url: "https://www.vectorportal.com/submit/maillist1.aspx",
            data: fem,
            success: function(msg) {
				if ( note.height() ) {			
					note.slideUp(1000, function() { $(this).hide(); });
				} 
				else note.hide();

				$('#loading').fadeOut(300, function() {
					$(this).remove();

					// Message Sent? Show the 'Thank You' message and hide the form
					result = (msg === 'OK') ? '<div class="alert alert-success text-center"> <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">X</span></button>Ваше сообщение было отправлено успешно</div>' : msg;

					var i = setInterval(function() {
						if ( !note.is(':visible') ) {
							note.html(result).slideDown(1000);
							clearInterval(i);
						}
					}, 40);    
				}); // end loading image fadeOut
            }	
        });

        return false;
    });
});

</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-18403054-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments)};
  gtag('js', new Date());

  gtag('config', 'UA-18403054-1');
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
		$('#back-to-top').click(function(event) {



			$('html, body').animate({

				scrollTop: 0

			}, 500);



			event.preventDefault();

			return false;

		});



		//Next code used to prevent unexpected menu close when using some components (like accordion, tabs, forms, etc), please add the next JavaScript to your page

		$(window).load(function() {

			$(document).on('click', '.navbar .dropdown-menu', function(e) {
				e.stopPropagation();
			});

		});
	</script>
</body>
</html>