!function(){function t(e){return t="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},t(e)}function e(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function r(t){for(var r=1;r<arguments.length;r++){var o=null!=arguments[r]?arguments[r]:{};r%2?e(Object(o),!0).forEach((function(e){n(t,e,o[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(o)):e(Object(o)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(o,e))}))}return t}function n(e,r,n){return(r=function(e){var r=function(e,r){if("object"!==t(e)||null===e)return e;var n=e[Symbol.toPrimitive];if(void 0!==n){var o=n.call(e,r||"default");if("object"!==t(o))return o;throw new TypeError("@@toPrimitive must return a primitive value.")}return("string"===r?String:Number)(e)}(e,"string");return"symbol"===t(r)?r:String(r)}(r))in e?Object.defineProperty(e,r,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[r]=n,e}function o(){"use strict";/*! regenerator-runtime -- Copyright (c) 2014-present, Facebook, Inc. -- license (MIT): https://github.com/facebook/regenerator/blob/main/LICENSE */o=function(){return e};var e={},r=Object.prototype,n=r.hasOwnProperty,i=Object.defineProperty||function(t,e,r){t[e]=r.value},a="function"==typeof Symbol?Symbol:{},c=a.iterator||"@@iterator",u=a.asyncIterator||"@@asyncIterator",s=a.toStringTag||"@@toStringTag";function l(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{l({},"")}catch(N){l=function(t,e,r){return t[e]=r}}function f(t,e,r,n){var o=e&&e.prototype instanceof d?e:d,a=Object.create(o.prototype),c=new E(n||[]);return i(a,"_invoke",{value:_(t,r,c)}),a}function p(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(N){return{type:"throw",arg:N}}}e.wrap=f;var h={};function d(){}function v(){}function y(){}var m={};l(m,c,(function(){return this}));var g=Object.getPrototypeOf,b=g&&g(g(S([])));b&&b!==r&&n.call(b,c)&&(m=b);var x=y.prototype=d.prototype=Object.create(m);function j(t){["next","throw","return"].forEach((function(e){l(t,e,(function(t){return this._invoke(e,t)}))}))}function w(e,r){function o(i,a,c,u){var s=p(e[i],e,a);if("throw"!==s.type){var l=s.arg,f=l.value;return f&&"object"==t(f)&&n.call(f,"__await")?r.resolve(f.__await).then((function(t){o("next",t,c,u)}),(function(t){o("throw",t,c,u)})):r.resolve(f).then((function(t){l.value=t,c(l)}),(function(t){return o("throw",t,c,u)}))}u(s.arg)}var a;i(this,"_invoke",{value:function(t,e){function n(){return new r((function(r,n){o(t,e,r,n)}))}return a=a?a.then(n,n):n()}})}function _(t,e,r){var n="suspendedStart";return function(o,i){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===o)throw i;return k()}for(r.method=o,r.arg=i;;){var a=r.delegate;if(a){var c=L(a,r);if(c){if(c===h)continue;return c}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===n)throw n="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);n="executing";var u=p(t,e,r);if("normal"===u.type){if(n=r.done?"completed":"suspendedYield",u.arg===h)continue;return{value:u.arg,done:r.done}}"throw"===u.type&&(n="completed",r.method="throw",r.arg=u.arg)}}}function L(t,e){var r=e.method,n=t.iterator[r];if(void 0===n)return e.delegate=null,"throw"===r&&t.iterator.return&&(e.method="return",e.arg=void 0,L(t,e),"throw"===e.method)||"return"!==r&&(e.method="throw",e.arg=new TypeError("The iterator does not provide a '"+r+"' method")),h;var o=p(n,t.iterator,e.arg);if("throw"===o.type)return e.method="throw",e.arg=o.arg,e.delegate=null,h;var i=o.arg;return i?i.done?(e[t.resultName]=i.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,h):i:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,h)}function P(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function O(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function E(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(P,this),this.reset(!0)}function S(t){if(t){var e=t[c];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var r=-1,o=function e(){for(;++r<t.length;)if(n.call(t,r))return e.value=t[r],e.done=!1,e;return e.value=void 0,e.done=!0,e};return o.next=o}}return{next:k}}function k(){return{value:void 0,done:!0}}return v.prototype=y,i(x,"constructor",{value:y,configurable:!0}),i(y,"constructor",{value:v,configurable:!0}),v.displayName=l(y,s,"GeneratorFunction"),e.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===v||"GeneratorFunction"===(e.displayName||e.name))},e.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,y):(t.__proto__=y,l(t,s,"GeneratorFunction")),t.prototype=Object.create(x),t},e.awrap=function(t){return{__await:t}},j(w.prototype),l(w.prototype,u,(function(){return this})),e.AsyncIterator=w,e.async=function(t,r,n,o,i){void 0===i&&(i=Promise);var a=new w(f(t,r,n,o),i);return e.isGeneratorFunction(r)?a:a.next().then((function(t){return t.done?t.value:a.next()}))},j(x),l(x,s,"Generator"),l(x,c,(function(){return this})),l(x,"toString",(function(){return"[object Generator]"})),e.keys=function(t){var e=Object(t),r=[];for(var n in e)r.push(n);return r.reverse(),function t(){for(;r.length;){var n=r.pop();if(n in e)return t.value=n,t.done=!1,t}return t.done=!0,t}},e.values=S,E.prototype={constructor:E,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(O),!t)for(var e in this)"t"===e.charAt(0)&&n.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function r(r,n){return a.type="throw",a.arg=t,e.next=r,n&&(e.method="next",e.arg=void 0),!!n}for(var o=this.tryEntries.length-1;o>=0;--o){var i=this.tryEntries[o],a=i.completion;if("root"===i.tryLoc)return r("end");if(i.tryLoc<=this.prev){var c=n.call(i,"catchLoc"),u=n.call(i,"finallyLoc");if(c&&u){if(this.prev<i.catchLoc)return r(i.catchLoc,!0);if(this.prev<i.finallyLoc)return r(i.finallyLoc)}else if(c){if(this.prev<i.catchLoc)return r(i.catchLoc,!0)}else{if(!u)throw new Error("try statement without catch or finally");if(this.prev<i.finallyLoc)return r(i.finallyLoc)}}}},abrupt:function(t,e){for(var r=this.tryEntries.length-1;r>=0;--r){var o=this.tryEntries[r];if(o.tryLoc<=this.prev&&n.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var i=o;break}}i&&("break"===t||"continue"===t)&&i.tryLoc<=e&&e<=i.finallyLoc&&(i=null);var a=i?i.completion:{};return a.type=t,a.arg=e,i?(this.method="next",this.next=i.finallyLoc,h):this.complete(a)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),h},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),O(r),h}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var n=r.completion;if("throw"===n.type){var o=n.arg;O(r)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:S(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),h}},e}function i(t,e,r,n,o,i,a){try{var c=t[i](a),u=c.value}catch(s){return void r(s)}c.done?e(u):Promise.resolve(u).then(n,o)}function a(t){return function(){var e=this,r=arguments;return new Promise((function(n,o){var a=t.apply(e,r);function c(t){i(a,n,o,c,u,"next",t)}function u(t){i(a,n,o,c,u,"throw",t)}c(void 0)}))}}System.register(["./index-legacy-b0dc59b0.js","./FormWrapper-legacy-726f5486.js","./ContainerCard-legacy-a94cba84.js","./ButtonSteps-legacy-7e639d05.js","./europe.identifiers-legacy-c5f0987c.js","./TextFieldController-legacy-1da5d1c9.js","./Navigation-legacy-0dceb0a2.js","./BusinessProtectionDetails-legacy-a77d205a.js","./Hidden-legacy-67cd41d6.js","./steps-schema-legacy-4961fc48.js","./FormHelperText-legacy-d60d01e1.js"],(function(t,e){"use strict";var n,i,c,u,s,l,f,p,h,d,v,y,m,g,b,x,j,w,_,L,P;return{setters:[function(t){n=t.j,i=t.x,c=t.B,u=t.D,s=t.p,l=t.L},function(t){f=t.u,p=t.F},function(t){h=t.u,d=t.C},function(t){v=t.G,y=t.B,m=t.a},function(t){g=t.g},function(t){b=t.T},function(t){x=t.b,j=t.g,w=t.B},function(t){_=t.B},function(t){L=t.H},function(t){P=t.a},null],execute:function(){var e=function(){return n.jsxs(v,{children:[n.jsx(x,{identifier:"businessProtection_step2_subtitle",settings:{variant:"h4",marginBottom:3}}),n.jsx(x,{identifier:"businessProtection_step2_information",settings:{variant:"body1",marginBottom:3}})]})},O=function(t){var r=t.isLoading,o=i((function(t){return t})).application;return n.jsx(c,{component:"div",sx:{flexGrow:1},children:n.jsxs(c,{component:"div",children:[n.jsxs(v,{container:!0,spacing:{xs:0,md:12},children:[n.jsxs(v,{item:!0,md:9,children:[n.jsx(e,{}),n.jsx(L,{mdUp:!0,children:n.jsx(v,{item:!0,md:3,style:{paddingBottom:30},children:n.jsx(_,{})})}),n.jsxs(v,{container:!0,rowSpacing:3,columnSpacing:4,children:[n.jsx(b,{attribute:"firstName",label:j("businessProtection_step2_label_firstname"),placeholder:j("businessProtection_step2_placeholder_firstname"),type:"text",defaultValue:(null==o?void 0:o.firstName)||"",disabled:null==o?void 0:o.closed,maxLength:50}),n.jsx(b,{attribute:"lastName",label:j("businessProtection_step2_label_lastname"),placeholder:j("businessProtection_step2_placeholder_lastname"),type:"text",defaultValue:(null==o?void 0:o.lastName)||"",disabled:null==o?void 0:o.closed,maxLength:50}),n.jsx(b,{attribute:"email",label:j("businessProtection_step2_label_email"),placeholder:j("businessProtection_step2_placeholder_email"),type:"text",defaultValue:(null==o?void 0:o.email)||"",disabled:null==o?void 0:o.closed,maxLength:60}),n.jsx(b,{attribute:"bin",label:j("businessProtection_step2_label_bin"),placeholder:j("businessProtection_step2_placeholder_bin"),type:"text",maxLength:9,defaultValue:(null==o?void 0:o.bin)||"",disabled:null==o?void 0:o.closed})]})]}),n.jsx(L,{mdDown:!0,children:n.jsx(v,{item:!0,md:3,style:{paddingLeft:30},children:n.jsx(_,{})})})]}),n.jsx(y,{isLoading:r,isFinished:null==o?void 0:o.closed})]})})},E=function(){var t=a(o().mark((function t(e){var r;return o().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,u.put("businessProtection/step2",e);case 2:return r=t.sent,t.abrupt("return",r.data);case 4:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}();t("default",(function(){var t,e,c,u=s((function(t){return t})).step,v=l().handleChangeStep,y=i().handleFetchApplication,b=i((function(t){return t})).application,x=h((function(t){return t})),j=x.handleMessageError,_=x.handleStepError,L=f({mutationFn:(c=a(o().mark((function t(e){var n,i;return o().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return n=g(),i=P.parse(r(r({},e),{},{id:n})),t.next=4,E(i);case 4:return t.abrupt("return",t.sent);case 5:case"end":return t.stop()}}),t)}))),function(t){return c.apply(this,arguments)}),onSuccess:(e=a(o().mark((function t(e){var r;return o().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(e.content){t.next=2;break}return t.abrupt("return");case 2:return r=g(),t.next=5,y(null!=r?r:0);case 5:v(u+1),_(void 0),j(void 0);case 8:case"end":return t.stop()}}),t)}))),function(t){return e.apply(this,arguments)}),onError:function(){_(1),j("businessProtection_error_message_step_2")}});return n.jsxs(w,{component:"div",children:[n.jsx(m,{application:"businessProtection",completed:null!==(t=b.closed)&&void 0!==t&&t}),n.jsx(d,{children:n.jsx(w,{component:"div",sx:{flexGrow:1},marginBottom:4,children:n.jsx(p,{schema:P,onSubmit:L.mutateAsync,children:n.jsx(O,{isLoading:L.isLoading})})})})]})}))}}}))}();
