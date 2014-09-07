/**
 *  $Id: scriptqueue.js 351 2007-11-13 12:56:18Z wingedfox $
 *  $HeadURL: https://svn.debugger.ru/repos/jslibs/BrowserExtensions/tags/BrowserExtensions.015/scriptqueue.js $
 *
 *  Dynamically load scripts and script queues (when load order is important)
 *
 **********NOTE********
 *  If you need to load any scripts before ScriptQueue exists, use the following snippet
 *  <code>
 *      if (!(window.ScriptQueueIncludes instanceof Array)) window.ScriptQueueIncludes = []
 *      window.ScriptQueueIncludes = window.ScriptQueueIncludes.concat(scriptsarray);
 *  </code>
 *  ScriptQueue loads all the scripts, queued before its' load in the ScriptQueueIncludes
 **********
 *
 *  @author Ilya Lebedev <ilya@lebedev.net>
 *  @modified $Date: 2007-11-13 15:56:18 +0300 (Втр, 13 Ноя 2007) $
 *  @version $Rev: 351 $
 *  @license LGPL 2.1 or later
 *
 *  @class ScriptQueue
 *  @param {Function} optional callback function, called on each successful script load
 *  @scope public
 */
ScriptQueue=function(i){var I=this,static=arguments.callee;if('function'!=typeof i)i=function(){};var o=[];I.load=function(C){O(C,i);};I.queue=function(C){var e=o.length;o[e]=C;if(!e)O(C,_);};var O=function(C,i){var e,v=static.scripts;if(e=v.hash[C]){v=static.scripts[e];if(v[2]){i(C,v[2]);}else{v[1].push(i);}}else{e=v.length;v[e]=[C,[i],false];v.hash[C]=e;Q(C);}};var Q=function(C){if(document.body){var e=document.createElement('script'),v=document.getElementsByTagName("head")[0];e.type="text/javascript";e.charset="UTF-8";e.src=C;e.rSrc=C;e.onload=e.onreadystatechange=c;v.appendChild(e);}else{document.write("<scr"+"ipt onload=\"\" src=\""+C+"\" charset=\"UTF-8\"></scr"+"ipt>");c.call({'rSrc':C},{'type':'load'});}};var _=function(C,e){i(C,e);o.splice(0,1);if(o.length&&e)O(o[0],arguments.callee);else i(null,e)};var c=function(C){var e=static.scripts,v=e.hash[this.rSrc],C=C||window.event;e=e[v];if(('load'==C.type||'complete'==this.readyState)){if(!e[2])e[2]=true;else return}for(var V=0,i=e[1],x=i.length;V<x;V++){i[V](e[0],e[2]);}}};ScriptQueue.scripts=[false];ScriptQueue.scripts.hash={};ScriptQueue.queue=function(i){if(!i.length)return;var I=new ScriptQueue;for(var l=0,o=i.length;l<o;l++){I.queue(i[l]);}};if(window.ScriptQueueIncludes instanceof Array){ScriptQueue.queue(window.ScriptQueueIncludes);}
