/*
     This script downloaded from www.JavaScriptBank.com
     Come to view and download over 2000+ free javascript at www.JavaScriptBank.com
*/
/**
 * @author WingedFox
 */
PopupVirtualKeyboard=new function(){var i=this;var I=null;var l=(function(O){var Q=document.getElementsByTagName('script'),_=new RegExp('^(.*/|)('+O+')([#?]|$)');for(var c=0,C=Q.length;c<C;c++){var e=String(Q[c].src).match(_);if(e){if(e[1].match(/^((https?|file)\:\/{2,}|\w:[\\])/))return e[1];if(e[1].indexOf("/")==0)return e[1];b=document.getElementsByTagName('base');if(b[0]&&b[0].href)return b[0].href+e[1];return(document.location.href.match(/(.*[\/\\])/)[0]+e[1]).replace(/^\/+(?=\w:)/,"");}}return null})('vk_popup.js');i.isOpen=function(){return null!=I&&!I.closed};var o=null;i.attachInput=function(O){if(I&&!I.closed&&I.VirtualKeyboard){return I.VirtualKeyboard.attachInput(O);}return false};i.open=i.show=function(O){if(!I||I.closed){I=(window.showModelessDialog||window.open)(l+"vk_popup.html",window.showModelessDialog?window:"_blank","status=0,title=0,dependent=yes,resizable=no,scrollbars=no,width=500,height=500");o=O;return true}return false};i.close=i.hide=function(O){if(!I||I.closed)return false;if(!I.VirtualKeyboard.isOpen())I.VirtualKeyboard.hide();I.close();I=null};i.toggle=function(O){i.isOpen()?i.close():i.open(O);};i.onload=function(){I.VirtualKeyboard.show(document.getElementById(o),I.document.body,I.document.body);I.document.body.className=I.document.body.parentNode.className='VirtualKeyboardPopup';I.dialogHeight=parseInt(I.dialogHeight)-I.DOM.getClientHeight()+I.document.body.firstChild.offsetHeight+'px';I.dialogWidth=parseInt(I.dialogWidth)-I.DOM.getClientWidth()+I.document.body.firstChild.offsetWidth+'px';if(I.sizeToContent)I.sizeToContent();I.onunload=i.close};if(window.attachEvent)window.attachEvent('onunload',i.close);else if(window.addEventListener)window.addEventListener('unload',i.close,false);};