!function(){function t(e){return t="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},t(e)}function e(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){var n=null==t?null:"undefined"!=typeof Symbol&&t[Symbol.iterator]||t["@@iterator"];if(null!=n){var r,i,o,a,s=[],c=!0,u=!1;try{if(o=(n=n.call(t)).next,0===e){if(Object(n)!==n)return;c=!1}else for(;!(c=(r=o.call(n)).done)&&(s.push(r.value),s.length!==e);c=!0);}catch(l){u=!0,i=l}finally{try{if(!c&&null!=n.return&&(a=n.return(),Object(a)!==a))return}finally{if(u)throw i}}return s}}(t,e)||function(t,e){if(!t)return;if("string"==typeof t)return n(t,e);var r=Object.prototype.toString.call(t).slice(8,-1);"Object"===r&&t.constructor&&(r=t.constructor.name);if("Map"===r||"Set"===r)return Array.from(t);if("Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return n(t,e)}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function n(t,e){(null==e||e>t.length)&&(e=t.length);for(var n=0,r=new Array(e);n<e;n++)r[n]=t[n];return r}function r(){"use strict";/*! regenerator-runtime -- Copyright (c) 2014-present, Facebook, Inc. -- license (MIT): https://github.com/facebook/regenerator/blob/main/LICENSE */r=function(){return e};var e={},n=Object.prototype,i=n.hasOwnProperty,o=Object.defineProperty||function(t,e,n){t[e]=n.value},a="function"==typeof Symbol?Symbol:{},s=a.iterator||"@@iterator",c=a.asyncIterator||"@@asyncIterator",u=a.toStringTag||"@@toStringTag";function l(t,e,n){return Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{l({},"")}catch(k){l=function(t,e,n){return t[e]=n}}function f(t,e,n,r){var i=e&&e.prototype instanceof p?e:p,a=Object.create(i.prototype),s=new P(r||[]);return o(a,"_invoke",{value:L(t,n,s)}),a}function d(t,e,n){try{return{type:"normal",arg:t.call(e,n)}}catch(k){return{type:"throw",arg:k}}}e.wrap=f;var h={};function p(){}function m(){}function y(){}var g={};l(g,s,(function(){return this}));var v=Object.getPrototypeOf,x=v&&v(v(B([])));x&&x!==n&&i.call(x,s)&&(g=x);var j=y.prototype=p.prototype=Object.create(g);function b(t){["next","throw","return"].forEach((function(e){l(t,e,(function(t){return this._invoke(e,t)}))}))}function w(e,n){function r(o,a,s,c){var u=d(e[o],e,a);if("throw"!==u.type){var l=u.arg,f=l.value;return f&&"object"==t(f)&&i.call(f,"__await")?n.resolve(f.__await).then((function(t){r("next",t,s,c)}),(function(t){r("throw",t,s,c)})):n.resolve(f).then((function(t){l.value=t,s(l)}),(function(t){return r("throw",t,s,c)}))}c(u.arg)}var a;o(this,"_invoke",{value:function(t,e){function i(){return new n((function(n,i){r(t,e,n,i)}))}return a=a?a.then(i,i):i()}})}function L(t,e,n){var r="suspendedStart";return function(i,o){if("executing"===r)throw new Error("Generator is already running");if("completed"===r){if("throw"===i)throw o;return O()}for(n.method=i,n.arg=o;;){var a=n.delegate;if(a){var s=_(a,n);if(s){if(s===h)continue;return s}}if("next"===n.method)n.sent=n._sent=n.arg;else if("throw"===n.method){if("suspendedStart"===r)throw r="completed",n.arg;n.dispatchException(n.arg)}else"return"===n.method&&n.abrupt("return",n.arg);r="executing";var c=d(t,e,n);if("normal"===c.type){if(r=n.done?"completed":"suspendedYield",c.arg===h)continue;return{value:c.arg,done:n.done}}"throw"===c.type&&(r="completed",n.method="throw",n.arg=c.arg)}}}function _(t,e){var n=e.method,r=t.iterator[n];if(void 0===r)return e.delegate=null,"throw"===n&&t.iterator.return&&(e.method="return",e.arg=void 0,_(t,e),"throw"===e.method)||"return"!==n&&(e.method="throw",e.arg=new TypeError("The iterator does not provide a '"+n+"' method")),h;var i=d(r,t.iterator,e.arg);if("throw"===i.type)return e.method="throw",e.arg=i.arg,e.delegate=null,h;var o=i.arg;return o?o.done?(e[t.resultName]=o.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,h):o:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,h)}function S(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function E(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function P(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(S,this),this.reset(!0)}function B(t){if(t){var e=t[s];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,r=function e(){for(;++n<t.length;)if(i.call(t,n))return e.value=t[n],e.done=!1,e;return e.value=void 0,e.done=!0,e};return r.next=r}}return{next:O}}function O(){return{value:void 0,done:!0}}return m.prototype=y,o(j,"constructor",{value:y,configurable:!0}),o(y,"constructor",{value:m,configurable:!0}),m.displayName=l(y,u,"GeneratorFunction"),e.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===m||"GeneratorFunction"===(e.displayName||e.name))},e.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,y):(t.__proto__=y,l(t,u,"GeneratorFunction")),t.prototype=Object.create(j),t},e.awrap=function(t){return{__await:t}},b(w.prototype),l(w.prototype,c,(function(){return this})),e.AsyncIterator=w,e.async=function(t,n,r,i,o){void 0===o&&(o=Promise);var a=new w(f(t,n,r,i),o);return e.isGeneratorFunction(n)?a:a.next().then((function(t){return t.done?t.value:a.next()}))},b(j),l(j,u,"Generator"),l(j,s,(function(){return this})),l(j,"toString",(function(){return"[object Generator]"})),e.keys=function(t){var e=Object(t),n=[];for(var r in e)n.push(r);return n.reverse(),function t(){for(;n.length;){var r=n.pop();if(r in e)return t.value=r,t.done=!1,t}return t.done=!0,t}},e.values=B,P.prototype={constructor:P,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(E),!t)for(var e in this)"t"===e.charAt(0)&&i.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function n(n,r){return a.type="throw",a.arg=t,e.next=n,r&&(e.method="next",e.arg=void 0),!!r}for(var r=this.tryEntries.length-1;r>=0;--r){var o=this.tryEntries[r],a=o.completion;if("root"===o.tryLoc)return n("end");if(o.tryLoc<=this.prev){var s=i.call(o,"catchLoc"),c=i.call(o,"finallyLoc");if(s&&c){if(this.prev<o.catchLoc)return n(o.catchLoc,!0);if(this.prev<o.finallyLoc)return n(o.finallyLoc)}else if(s){if(this.prev<o.catchLoc)return n(o.catchLoc,!0)}else{if(!c)throw new Error("try statement without catch or finally");if(this.prev<o.finallyLoc)return n(o.finallyLoc)}}}},abrupt:function(t,e){for(var n=this.tryEntries.length-1;n>=0;--n){var r=this.tryEntries[n];if(r.tryLoc<=this.prev&&i.call(r,"finallyLoc")&&this.prev<r.finallyLoc){var o=r;break}}o&&("break"===t||"continue"===t)&&o.tryLoc<=e&&e<=o.finallyLoc&&(o=null);var a=o?o.completion:{};return a.type=t,a.arg=e,o?(this.method="next",this.next=o.finallyLoc,h):this.complete(a)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),h},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var n=this.tryEntries[e];if(n.finallyLoc===t)return this.complete(n.completion,n.afterLoc),E(n),h}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var n=this.tryEntries[e];if(n.tryLoc===t){var r=n.completion;if("throw"===r.type){var i=r.arg;E(n)}return i}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,n){return this.delegate={iterator:B(t),resultName:e,nextLoc:n},"next"===this.method&&(this.arg=void 0),h}},e}function i(t,e,n,r,i,o,a){try{var s=t[o](a),c=s.value}catch(u){return void n(u)}s.done?e(c):Promise.resolve(c).then(r,i)}function o(t){return function(){var e=this,n=arguments;return new Promise((function(r,o){var a=t.apply(e,n);function s(t){i(a,r,o,s,c,"next",t)}function c(t){i(a,r,o,s,c,"throw",t)}s(void 0)}))}}System.register(["./index-legacy-b0dc59b0.js","./FormWrapper-legacy-726f5486.js","./ContainerCard-legacy-a94cba84.js","./ButtonSteps-legacy-7e639d05.js","./europe.identifiers-legacy-c5f0987c.js","./Edit-legacy-32c46236.js","./Navigation-legacy-0dceb0a2.js","./index-legacy-b7ff52fe.js","./BusinessProtectionDetails-legacy-a77d205a.js","./Hidden-legacy-67cd41d6.js","./steps-schema-legacy-4961fc48.js","./Grid2-legacy-68f5b5de.js"],(function(t,n){"use strict";var i,a,s,c,u,l,f,d,h,p,m,y,g,v,x,j,b,w,L,_,S,E,P,B,O,k,D,I,F,A,G,N;return{setters:[function(t){i=t.D,a=t.x,s=t.r,c=t.j,u=t.L,l=t.p,f=t.E,d=t.B,h=t.at,p=t.K,m=t.u,y=t.C},function(t){g=t.u,v=t.D,x=t.F},function(t){j=t.u,b=t.C},function(t){w=t.u,L=t.G,_=t.B,S=t.a},function(t){E=t.g},function(t){P=t.d},function(t){B=t.b,O=t.f,k=t.T,D=t.B},function(t){I=t.j},function(t){F=t.B},function(t){A=t.H},function(t){G=t.b},function(t){N=t.G}],execute:function(){var n=function(){var t=o(r().mark((function t(e){var n;return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,i.put("businessProtection/step3",e);case 2:return n=t.sent,t.abrupt("return",n.data);case 4:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}(),C=function(){var t=w(I({minWidth:900}));return c.jsxs(c.Fragment,{children:[c.jsx(B,{identifier:"businessProtection_step3_title_confirm",settings:{variant:"h4",marginBottom:3,textAlign:t?"left":"center"}}),c.jsx(B,{identifier:"businessProtection_step3_information",settings:{variant:"body1",marginBottom:3}}),"    "]})},T=function(t){var e=t.isLoading,n=t.application,r=u().handleChangeStep,i=l().step,o=f().language,a=new Date(null==n?void 0:n.effectiveDate).toLocaleDateString(o,{day:"numeric",month:"long",year:"numeric"}),s=new Date(null==n?void 0:n.expiryDate).toLocaleDateString(o,{day:"numeric",month:"long",year:"numeric"});return c.jsx(d,{component:"div",sx:{flexGrow:1},children:c.jsxs(d,{component:"div",children:[c.jsxs(L,{container:!0,spacing:{xs:0,md:12},sx:{marginBottom:4},children:[c.jsxs(L,{item:!0,md:9,children:[c.jsx(C,{}),c.jsx(A,{mdUp:!0,children:c.jsx(L,{item:!0,md:3,style:{paddingBottom:30},children:c.jsx(F,{})})}),c.jsxs(d,{component:"div",display:"flex",alignItems:"center",justifyContent:"space-between",flexDirection:"row",children:[c.jsx(B,{identifier:"businessProtection_step3_cardholder_details",settings:{variant:"h6",gutterBottom:!0}}),c.jsx(h,{show:!(null!=n&&n.closed),children:c.jsx(O,{label:c.jsx(B,{identifier:"edit",keyStorage:p.COMMONS,settings:{color:"primary"}}),color:"info",iconStart:c.jsx(P,{color:"primary"}),size:"small",variant:"text",onClick:function(){return r(i-1)}},2)})]}),c.jsx(v,{sx:{marginTop:0,marginBottom:2}}),c.jsxs(L,{container:!0,rowSpacing:2,columnSpacing:{xs:2,sm:4,md:4},paddingLeft:2,children:[c.jsx(L,{item:!0,xs:12,sm:6,md:6,children:c.jsxs(d,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[c.jsx(B,{identifier:"businessProtection_step3_firstname",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),c.jsx(k,{variant:"body1",fontWeight:400,marginLeft:1,children:(null==n?void 0:n.firstName)||""})]})}),c.jsx(L,{item:!0,xs:12,sm:6,md:6,children:c.jsxs(d,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[c.jsx(B,{identifier:"businessProtection_step3_lastname",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),c.jsx(k,{variant:"body1",marginLeft:1,children:(null==n?void 0:n.lastName)||""})]})}),c.jsx(L,{item:!0,xs:12,sm:6,md:6,children:c.jsxs(d,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[c.jsx(B,{identifier:"businessProtection_step3_email",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),c.jsxs(k,{variant:"body1",marginLeft:1,children:[(null==n?void 0:n.email)||""," "]})]})}),c.jsx(L,{item:!0,xs:12,sm:6,md:6,children:c.jsxs(d,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[c.jsx(B,{identifier:"businessProtection_step3_bin",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),c.jsx(k,{variant:"body1",marginLeft:1,children:(null==n?void 0:n.bin)||""})]})})]}),c.jsx(d,{component:"div",display:"flex",alignItems:"center",justifyContent:"space-between",flexDirection:"row",marginTop:3,children:c.jsx(B,{identifier:"businessProtection_step3_certificate_details",settings:{variant:"h6",gutterBottom:!0}})}),c.jsx(v,{sx:{marginTop:0,marginBottom:2}}),c.jsxs(L,{container:!0,rowSpacing:2,columnSpacing:{xs:2,sm:4,md:4},paddingLeft:2,children:[c.jsx(L,{item:!0,xs:12,sm:6,md:6,children:c.jsxs(d,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[c.jsx(B,{identifier:"businessProtection_step3_effective",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),c.jsx(k,{variant:"body1",marginLeft:1,children:a})]})}),c.jsx(L,{item:!0,xs:12,sm:6,md:6,children:c.jsxs(d,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[c.jsx(B,{identifier:"businessProtection_step3_expiry",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),c.jsx(k,{variant:"body1",marginLeft:1,children:s})]})})]})]}),c.jsx(A,{mdDown:!0,children:c.jsx(L,{item:!0,md:3,style:{paddingLeft:30},children:c.jsx(F,{})})})]}),c.jsx(_,{isLoading:e,isFinished:null==n?void 0:n.closed})]})})},W=function(){var t=o(r().mark((function t(e){var n;return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,i.put("businessProtection/step4",e);case 2:return n=t.sent,t.abrupt("return",n.data);case 4:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}();t("default",(function(){var t,i,d,h=function(){var t,i,c=a().handleFetchApplication,u=e(s.useState(!0),2),l=u[0],f=u[1],d=g({mutationFn:(i=o(r().mark((function t(){var e;return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return e=E(),t.next=3,n({id:e});case 3:case"end":return t.stop()}}),t)}))),function(){return i.apply(this,arguments)}),onSuccess:(t=o(r().mark((function t(){var e;return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:e=E(),c(null!=e?e:0),f(!1);case 3:case"end":return t.stop()}}),t)}))),function(){return t.apply(this,arguments)}),onError:function(){return f(!1)}}),h=function(){var t=o(r().mark((function t(){return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,d.mutateAsync();case 2:return t.abrupt("return",t.sent);case 3:case"end":return t.stop()}}),t)})));return function(){return t.apply(this,arguments)}}();return s.useEffect((function(){E()?h():f(!1)}),[]),{isLoading:l}}(),p=h.isLoading,v=u().handleChangeStep,w=a(),L=w.application,_=w.handleFetchApplication,P=e(s.useState(!1),2),B=P[0],O=P[1],k=m().country,I=f().language,F=j((function(t){return t})),A=F.handleMessageError,C=F.handleStepError,M=l((function(t){return t})).step,H=g({mutationFn:(d=o(r().mark((function t(){var e;return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return e=E(),t.next=3,W({id:null!=e?e:0,country:null!=k?k:"",language:null!=I?I:""});case 3:return t.abrupt("return",t.sent);case 4:case"end":return t.stop()}}),t)}))),function(){return d.apply(this,arguments)}),onSuccess:(i=o(r().mark((function t(e){var n;return r().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(e.content){t.next=2;break}return t.abrupt("return");case 2:return n=E(),t.next=5,_(null!=n?n:0);case 5:v(M+1),O(!0),C(void 0),A(void 0);case 9:case"end":return t.stop()}}),t)}))),function(t){return i.apply(this,arguments)}),onError:function(){C(M),A("businessProtection_error_message_step_3")}});return p?c.jsx(y,{}):c.jsxs(D,{component:"div",children:[c.jsx(S,{application:"businessProtection",completed:null!==(t=L.closed)&&void 0!==t&&t}),c.jsx(b,{children:c.jsx(D,{component:"div",sx:{flexGrow:1},marginBottom:2,children:c.jsx(N,{container:!0,display:"flex",alignItems:"start",children:c.jsx(N,{children:c.jsx(x,{schema:G,onSubmit:H.mutateAsync,children:c.jsx(T,{isLoading:H.isLoading,application:L,isFinished:B})})})})})})]})}))}}}))}();