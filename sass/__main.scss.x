:root{
  line-height: var(--ratio);
  background-color: transparent;
  color: var(--color-dark);
  font-family: ltc-goudy-oldstyle-pro, serif;
  font-style: normal;
  font-weight: 400;
}
*
,*::before
,*::after
{
  box-sizing: border-box;
  background-color: inherit;
  font: inherit;
  color: inherit;
  overflow-wrap: break-word;
  margin: 0;
  padding: 0;
  border-style: solid;
  border-width: 0;
  border-color: currentColor;
}
body
{
  font-size: var(--s0);
  color: var(--color-dark);
  background-color: var(--color-light);
}
p,li{
  line-height: var(--s2);
  margin: var(--space-stack-default);
  hyphens: auto;
}
em{
  font-style: italic;
  font-weight: 400;
}
strong{
  font-style: normal;
  font-weight: 700;
}
em strong
,strong em
{
  font-style: italic;
  font-weight: 700;
}

/* --------------------------------------------------------------- */
/* start: headings */
h1,h2,h3,h4{
  margin: var(--space-stack-default);
}
h2,h3,h4{
  margin-top: var(--space-xl);
}
h1{
  font-size: var(--s4);
  font-weight: normal;
  font-variant-ligatures: no-contextual;
}
h2{
  font-size: var(--s3);
}
// h3{
//   font-size: var(--s2);
// }
// h4{
//   font-size: var(--s1);
// }
/* end: headings */
/* --------------------------------------------------------------- */

/* --------------------------------------------------------------- */
/* start: lists */
// ul{
  // margin-left: 1em;
  // li::before{
  //   content: "•";
  //   color: #999;
  //   display: inline-block;
  //   width: 1em;
  //   margin-left: -1em
  // }
// }
// header nav li{
//   line-height: var(--s0);
//   font-size: var(--s-1);
// }
// cluster-l li::before{
//   content: '';
// }
/* end: lists */
/* --------------------------------------------------------------- */

/* --------------------------------------------------------------- */
/* start: links */
a{
  text-decoration: underline;
  text-decoration-style: solid;
  text-decoration-color: var(--color-link);
  text-decoration-thickness: 1px;
  text-underline-offset: 3px;
  text-decoration-skip-ink: auto;
  &:focus
  ,&:focus-within
  {
    outline: none;
    background-color: var(--color-focus-light);
    text-decoration-color: var(--color-focus);
  }
  &:hover{
    text-decoration-style: dotted;
  }
  &:active{
    text-decoration-style: dashed;
  }
  // &.skip{
  //   position: absolute;
  //   left: -10000px;
  //   top: auto;
  //   width: 1px;
  //   height: 1px;
  //   overflow: hidden;
  //   &:focus{
  //     position: static;
  //     width: auto;
  //     height: auto;
  //   }
  // }
}
/* end: links */
/* --------------------------------------------------------------- */

/* --------------------------------------------------------------- */
/* start: mailchimp signup form */
#mc_embed_signup{
  font-family: Helvetica,Arial,sans-serif;
  letter-spacing: .05em;
  font-size: var(--s-3);
  form{
    padding: 0;
  }
  input{
    &:focus{
      outline: none;
      border: 1px solid var(--color-focus);
    }
    &:hover{
      border: 1px dotted var(--color-link);
    }
    &:active{
      border: 1px solid var(--color-link);
    }
  }
  .mc-field-group{
    padding: 0;
    width: 100%;
    margin: var(--space-stack-s);
    label{
      margin: var(--space-stack-xs);
    }
    input{
      padding: 5px 0 6px;
      font-size: var(--s0);
    }
  }
  #mc-embedded-subscribe-form{
    div.mce_inline_error
    {
      color: var(--color-link);
      padding: 0;
    }
    input.mce_inline_error
    {
      border: 2px solid var(--color-link);
    }
  }
  .button{
    color: #000;
    background-color: #ddd;
    &:hover{
      background-color: #666;
    }
    &:focus
    {
      background-color: #555;
    }
    &:active
    {
      background-color: #444;
    }
  }
  .button
  ,.button:hover
  ,.button:focus
  ,.button:active
  {
    border: none;
  }
  .button:hover
  ,.button:focus
  ,.button:active
  {
    color: #fff;
  }
}
/* end: mailchimp signup form */
/* --------------------------------------------------------------- */

/* --------------------------------------------------------------- */
/* start: https://css-tricks.com/on-target/ */
:target {
  animation: highlight 1s ease;  
  transform: translateX(20px);     
}
@keyframes highlight {
  0% { border-left-color: red; }
  100% { border-left-color: white; }
}
section > div {
  border-left: 40px solid white;
  padding: 10px;
  transition: all 0.5s ease;     
  padding-right: 50px;
  margin-left: -20px;    
}
/* end: https://css-tricks.com/on-target/ */
/* --------------------------------------------------------------- */


/* --------------------------------------------------------------- */
/* start: responsive typography */
/* https://css-tricks.com/simplified-fluid-typography/ */
html {
  font-size: 10px;
}
@media screen and (min-width: 320px) {
  html {
    font-size: calc(10px + 6 * ((100vw - 320px) / 680));
  }
}
@media screen and (min-width: 1000px) {
  html {
    font-size: 16px;
  }
} 
/* end: responsive typography */
/* --------------------------------------------------------------- */
