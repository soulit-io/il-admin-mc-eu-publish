import{g as N,b as E,c as b,e as P,s as U,f as _,_ as l,r as C,i as Y,k as w,j as n,l as H,m as I,K as v}from"./index-473ea636.js";import{C as W}from"./ContainerCard-0b0b01a3.js";import{L as q}from"./LayoutContainer-af62cce7.js";import{T as K,u as G,a as J,r as Q,i as X,B as u,b as k}from"./Navigation-44e5a3e6.js";function Z(o){return E("MuiLink",o)}const ee=N("MuiLink",["root","underlineNone","underlineHover","underlineAlways","button","focusVisible"]),oe=ee,R={primary:"primary.main",textPrimary:"text.primary",secondary:"secondary.main",textSecondary:"text.secondary",error:"error.main"},ne=o=>R[o]||o,re=({theme:o,ownerState:e})=>{const r=ne(e.color),t=b(o,`palette.${r}`,!1)||e.color,s=b(o,`palette.${r}Channel`);return"vars"in o&&s?`rgba(${s} / 0.4)`:P(t,.4)},te=re,se=["className","color","component","onBlur","onFocus","TypographyClasses","underline","variant","sx"],ie=o=>{const{classes:e,component:r,focusVisible:t,underline:s}=o,i={root:["root",`underline${_(s)}`,r==="button"&&"button",t&&"focusVisible"]};return I(i,Z,e)},ae=U(K,{name:"MuiLink",slot:"Root",overridesResolver:(o,e)=>{const{ownerState:r}=o;return[e.root,e[`underline${_(r.underline)}`],r.component==="button"&&e.button]}})(({theme:o,ownerState:e})=>l({},e.underline==="none"&&{textDecoration:"none"},e.underline==="hover"&&{textDecoration:"none","&:hover":{textDecoration:"underline"}},e.underline==="always"&&l({textDecoration:"underline"},e.color!=="inherit"&&{textDecorationColor:te({theme:o,ownerState:e})},{"&:hover":{textDecorationColor:"inherit"}}),e.component==="button"&&{position:"relative",WebkitTapHighlightColor:"transparent",backgroundColor:"transparent",outline:0,border:0,margin:0,borderRadius:0,padding:0,cursor:"pointer",userSelect:"none",verticalAlign:"middle",MozAppearance:"none",WebkitAppearance:"none","&::-moz-focus-inner":{borderStyle:"none"},[`&.${oe.focusVisible}`]:{outline:"auto"}})),le=C.forwardRef(function(e,r){const t=Y({props:e,name:"MuiLink"}),{className:s,color:i="primary",component:p="a",onBlur:f,onFocus:m,TypographyClasses:D,underline:M="always",variant:x="inherit",sx:c}=t,S=w(t,se),{isFocusVisibleRef:h,onBlur:T,onFocus:L,ref:V}=G(),[A,y]=C.useState(!1),F=J(r,V),$=a=>{T(a),h.current===!1&&y(!1),f&&f(a)},B=a=>{L(a),h.current===!0&&y(!0),m&&m(a)},g=l({},t,{color:i,component:p,focusVisible:A,underline:M,variant:x}),O=ie(g);return n.jsx(ae,l({color:i,className:H(O.root,s),classes:D,component:p,onBlur:$,onFocus:B,ref:F,ownerState:g,variant:x,sx:[...Object.keys(R).includes(i)?[]:[{color:i}],...Array.isArray(c)?c:[c]]},S))}),ce=le;var d={},ue=X;Object.defineProperty(d,"__esModule",{value:!0});var z=d.default=void 0,de=ue(Q()),j=n,pe=(0,de.default)([(0,j.jsx)("path",{d:"M11.99 2C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zM12 20c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"},"0"),(0,j.jsx)("path",{d:"M12.5 7H11v6l5.25 3.15.75-1.23-4.5-2.67z"},"1")],"AccessTime");z=d.default=pe;const ye=()=>n.jsx(q,{children:n.jsx(u,{minHeight:"80vh",display:"flex",flexDirection:"column",children:n.jsx(W,{children:n.jsxs(u,{component:"span",display:"flex",flexDirection:"column",margin:"auto",textAlign:"center",justifyContent:"center",fontSize:100,paddingY:25,children:[n.jsx(u,{display:"flex",margin:"auto",children:n.jsx(z,{sx:{fontSize:120,paddingY:5}})}),n.jsx(k,{identifier:"unauthorized_session_expired",keyStorage:v.COMMONS,settings:{fontSize:25,paddingY:2}}),n.jsx(ce,{href:"https://www.mastercard.com.ar/es-ar.html",children:"click here"})," ",n.jsx(k,{identifier:"unauthorized_session_expired2",keyStorage:v.COMMONS,settings:{fontSize:25,paddingY:2}})]})})})});export{ye as default};
