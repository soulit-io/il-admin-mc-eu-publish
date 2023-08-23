import{D as g,u as w,r as x,j as e,au as v,K as _,at as B,R as k,p as F,L as T,x as I,C as E,B as b}from"./index-473ea636.js";import{u as h,D as A,F as D}from"./FormWrapper-7b37d978.js";import{u as M,C as L}from"./ContainerCard-0b0b01a3.js";import{B as p,b as c,j as Y}from"./Navigation-44e5a3e6.js";import{G as j,B as N,u as y,a as O}from"./ButtonSteps-68f2fe5d.js";import{f as z,s as G,g as S}from"./europe.identifiers-f1731223.js";import{c as R,C as q,d as U,L as W,a as $,b as K,e as Q}from"./files.helper-3d2c03c3.js";import{s as P}from"./steps-schema-83441de0.js";import"./FormHelperText-ed336a26.js";const X=async n=>(await g.post("businessProtection/step1",n)).data,H=()=>{const{token:n,country:t,language:o}=w(),[l,a]=x.useState(!0),m=h({mutationFn:async()=>{const s=await R({token:n,country:t,redirectFrom:"fromMarcos"}),i=await X({sessionId:s.content,language:o,country:t});G({id:i.content,name:"businessProtection"})},onSuccess:()=>a(!1),onError:()=>a(!1)}),d=async()=>await m.mutateAsync();return x.useEffect(()=>{var i;((i=z())==null?void 0:i.id)?a(!1):d()},[]),{isLoading:l}},J=async n=>(await g.put("businessProtection/step1",n)).data,V=({isLoading:n,application:t})=>{var o;return e.jsx(p,{component:"div",display:"flex",alignItems:"center",marginTop:2,children:e.jsxs(j,{container:!0,children:[e.jsx(j,{item:!0,md:12,xs:12,children:e.jsx(q,{xs:12,attribute:"checkTerms",label:e.jsx(c,{identifier:"businessProtection_step1_checkTerms_text"}),checked:(o=t==null?void 0:t.checkTerms)!=null?o:!1,disabled:t==null?void 0:t.closed})}),e.jsx(N,{isLoading:n,isFinished:t==null?void 0:t.closed})]})})},Z=async(n,t,o)=>(await g.get("BusinessProtection/download/document",{params:{country:n,language:t,documentType:o}})).data,ee=()=>{const n=Y(),t=y(n.breakpoints.up("lg")),o=y(n.breakpoints.up("sm")),{language:l,country:a}=w(),m=h({mutationFn:async s=>await v.promise(Z(a,l,s),{loading:e.jsx(c,{identifier:"businessProtection_loading_"+s,settings:{variant:"body2"}}),success:e.jsx(c,{identifier:"document_download_success",keyStorage:_.COMMONS,settings:{variant:"body2"}}),error:e.jsx(c,{identifier:"document_download_error",keyStorage:_.COMMONS,settings:{variant:"body2"}})}),onSuccess:s=>{const{content:i,statusCode:r}=s;if(r===200){const{file:u,fileName:f,contentType:C}=i;U({file:u,contentType:C,fileName:f})}}}),d=[{title:"businessProtection_terms_title",icon:e.jsx($,{fontSize:"large",color:"primary"}),description:"businessProtection_terms_text",documentType:"terms"},{title:"businessProtection_ipid_title",icon:e.jsx(K,{fontSize:"large",color:"primary"}),description:"businessProtection_ipid_text",documentType:"ipid"},{title:"businessProtection_faq_title",icon:e.jsx(Q,{fontSize:"large",color:"primary"}),description:"businessProtection_faq_text",documentType:"faq"}];return e.jsx(p,{flex:1,display:"flex",flexDirection:o?"row":"column",justifyContent:"space-between",alignItems:"center",sx:t?{padding:"0 15rem"}:{padding:"0 0rem"},children:d.map((s,i)=>e.jsxs(x.Fragment,{children:[e.jsx(p,{component:"div",display:"flex",flexDirection:"row",justifyContent:"space-between",paddingY:2,children:e.jsx(W,{title:s.title,icon:s.icon,description:s.description,onClick:()=>m.mutateAsync(s.documentType)})},i),e.jsx(B,{show:i!==d.length-1,children:e.jsx(A,{orientation:o?"vertical":"horizontal",flexItem:!0})})]},i))})},te=()=>e.jsxs(k.Fragment,{children:[e.jsx(c,{identifier:"businessProtection_step1_subtitle",settings:{variant:"h4",marginY:1}}),e.jsx(c,{identifier:"businessProtection_step1_information_part1",settings:{variant:"body1",marginY:1}}),e.jsx(c,{identifier:"businessProtection_step1_information_part2",settings:{variant:"body1",marginY:1}}),e.jsx(p,{component:"div",sx:{flexGrow:1},marginTop:2,display:"flex",children:e.jsx(ee,{})})]}),le=()=>{var i;const{step:n}=F(r=>r),{handleChangeStep:t}=T(),{isLoading:o}=H(),{handleFetchApplication:l,application:a}=I(),{handleMessageError:m,handleStepError:d}=M(r=>r),s=h({mutationFn:async r=>{debugger;const u=S(),f=P.parse({...r,id:u});return await J(f)},onSuccess:async r=>{if(!r.content)return;const u=S();await l(u!=null?u:0),t(n+1),d(void 0),m(void 0)},onError:()=>{d(0),m("businessProtection_error_message_step_1")}});return o?e.jsx(E,{showNavigation:!1}):e.jsxs(b,{component:"div",children:[e.jsx(b,{className:"bg-header bg-header-business-protection",children:e.jsx(c,{identifier:"businessProtection_step1_header_title",settings:{paddingX:10,paddingY:3,color:"white",variant:"h3"}})}),e.jsx(O,{application:"businessProtection",completed:(i=a.closed)!=null?i:!1}),e.jsxs(L,{children:[e.jsx(te,{}),e.jsx(D,{schema:P,onSubmit:s.mutateAsync,children:e.jsx(V,{isLoading:s.isLoading,application:a})})]})]})};export{le as default};
