import{D as P,x as L,r as y,j as e,L as I,p as F,E as C,B as o,at as W,K as G,u as T,C as A}from"./index-473ea636.js";import{u as E,D as B,F as M}from"./FormWrapper-7b37d978.js";import{u as k,C as N}from"./ContainerCard-0b0b01a3.js";import{u as O,G as s,B as U,a as H}from"./ButtonSteps-68f2fe5d.js";import{g as l}from"./europe.identifiers-f1731223.js";import{d as K}from"./Edit-9db30227.js";import{b as i,f as R,T as m,B as _}from"./Navigation-44e5a3e6.js";import{j as $}from"./index-47fd78bb.js";import{B as w}from"./BusinessProtectionDetails-5bf4a487.js";import{H as p}from"./Hidden-c0379fcc.js";import{b as q}from"./steps-schema-83441de0.js";import{G as D}from"./Grid2-61f8cc8c.js";const z=async n=>(await P.put("businessProtection/step3",n)).data,Q=()=>{const{handleFetchApplication:n}=L(),[t,d]=y.useState(!0),c=E({mutationFn:async()=>{const r=l();await z({id:r})},onSuccess:async()=>{const r=l();n(r!=null?r:0),d(!1)},onError:()=>d(!1)}),u=async()=>await c.mutateAsync();return y.useEffect(()=>{l()?u():d(!1)},[]),{isLoading:t}},Y=()=>{const n=O($({minWidth:900}));return e.jsxs(e.Fragment,{children:[e.jsx(i,{identifier:"businessProtection_step3_title_confirm",settings:{variant:"h4",marginBottom:3,textAlign:n?"left":"center"}}),e.jsx(i,{identifier:"businessProtection_step3_information",settings:{variant:"body1",marginBottom:3}}),"    "]})},J=({isLoading:n,application:t})=>{const{handleChangeStep:d}=I(),{step:c}=F(),u=()=>d(c-1),{language:r}=C(),x=new Date(t==null?void 0:t.effectiveDate).toLocaleDateString(r,{day:"numeric",month:"long",year:"numeric"}),g=new Date(t==null?void 0:t.expiryDate).toLocaleDateString(r,{day:"numeric",month:"long",year:"numeric"});return e.jsx(o,{component:"div",sx:{flexGrow:1},children:e.jsxs(o,{component:"div",children:[e.jsxs(s,{container:!0,spacing:{xs:0,md:12},sx:{marginBottom:4},children:[e.jsxs(s,{item:!0,md:9,children:[e.jsx(Y,{}),e.jsx(p,{mdUp:!0,children:e.jsx(s,{item:!0,md:3,style:{paddingBottom:30},children:e.jsx(w,{})})}),e.jsxs(o,{component:"div",display:"flex",alignItems:"center",justifyContent:"space-between",flexDirection:"row",children:[e.jsx(i,{identifier:"businessProtection_step3_cardholder_details",settings:{variant:"h6",gutterBottom:!0}}),e.jsx(W,{show:!(t!=null&&t.closed)||!1,children:e.jsx(R,{label:e.jsx(i,{identifier:"edit",keyStorage:G.COMMONS,settings:{color:"primary"}}),color:"info",iconStart:e.jsx(K,{color:"primary"}),size:"small",variant:"text",onClick:u},2)})]}),e.jsx(B,{sx:{marginTop:0,marginBottom:2}}),e.jsxs(s,{container:!0,rowSpacing:2,columnSpacing:{xs:2,sm:4,md:4},paddingLeft:2,children:[e.jsx(s,{item:!0,xs:12,sm:6,md:6,children:e.jsxs(o,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[e.jsx(i,{identifier:"businessProtection_step3_firstname",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),e.jsx(m,{variant:"body1",fontWeight:400,marginLeft:1,children:(t==null?void 0:t.firstName)||""})]})}),e.jsx(s,{item:!0,xs:12,sm:6,md:6,children:e.jsxs(o,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[e.jsx(i,{identifier:"businessProtection_step3_lastname",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),e.jsx(m,{variant:"body1",marginLeft:1,children:(t==null?void 0:t.lastName)||""})]})}),e.jsx(s,{item:!0,xs:12,sm:6,md:6,children:e.jsxs(o,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[e.jsx(i,{identifier:"businessProtection_step3_email",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),e.jsxs(m,{variant:"body1",marginLeft:1,children:[(t==null?void 0:t.email)||""," "]})]})}),e.jsx(s,{item:!0,xs:12,sm:6,md:6,children:e.jsxs(o,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[e.jsx(i,{identifier:"businessProtection_step3_bin",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),e.jsx(m,{variant:"body1",marginLeft:1,children:(t==null?void 0:t.bin)||""})]})})]}),e.jsx(o,{component:"div",display:"flex",alignItems:"center",justifyContent:"space-between",flexDirection:"row",marginTop:3,children:e.jsx(i,{identifier:"businessProtection_step3_certificate_details",settings:{variant:"h6",gutterBottom:!0}})}),e.jsx(B,{sx:{marginTop:0,marginBottom:2}}),e.jsxs(s,{container:!0,rowSpacing:2,columnSpacing:{xs:2,sm:4,md:4},paddingLeft:2,children:[e.jsx(s,{item:!0,xs:12,sm:6,md:6,children:e.jsxs(o,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[e.jsx(i,{identifier:"businessProtection_step3_effective",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),e.jsx(m,{variant:"body1",marginLeft:1,children:x})]})}),e.jsx(s,{item:!0,xs:12,sm:6,md:6,children:e.jsxs(o,{display:"flex",flexDirection:"row",alignItems:"baseline",children:[e.jsx(i,{identifier:"businessProtection_step3_expiry",settings:{variant:"body1",fontWeight:600,gutterBottom:!0}}),e.jsx(m,{variant:"body1",marginLeft:1,children:g})]})})]})]}),e.jsx(p,{mdDown:!0,children:e.jsx(s,{item:!0,md:3,style:{paddingLeft:30},children:e.jsx(w,{})})})]}),e.jsx(U,{isLoading:n,isFinished:t==null?void 0:t.closed})]})})},V=async n=>(await P.put("businessProtection/step4",n)).data,ce=()=>{var v;const{isLoading:n}=Q(),{handleChangeStep:t}=I(),{application:d,handleFetchApplication:c}=L(),[u,r]=y.useState(!1),{country:f}=T(),{language:x}=C(),{handleMessageError:h,handleStepError:g}=k(a=>a),{step:b}=F(a=>a),S=E({mutationFn:async()=>{const a=l();return await V({id:a!=null?a:0,country:f!=null?f:"",language:x!=null?x:""})},onSuccess:async a=>{if(!a.content)return;const j=l();await c(j!=null?j:0),t(b+1),r(!0),g(void 0),h(void 0)},onError:()=>{g(b),h("businessProtection_error_message_step_3")}});return n?e.jsx(A,{}):e.jsxs(_,{component:"div",children:[e.jsx(H,{application:"businessProtection",completed:(v=d.closed)!=null?v:!1}),e.jsx(N,{children:e.jsx(_,{component:"div",sx:{flexGrow:1},marginBottom:2,children:e.jsx(D,{container:!0,display:"flex",alignItems:"start",children:e.jsx(D,{children:e.jsx(M,{schema:q,onSubmit:S.mutateAsync,children:e.jsx(J,{isLoading:S.isLoading,application:d,isFinished:u})})})})})})]})};export{ce as default};
