:root {
  line-height: var(--ratio);
  font-size: calc(0.333vw + 1em);
  font-family: var(--font-plain);
  background-color: var(--color-light);
  color: var(--color-dark);
}

*,
*::before,
*::after {
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

/* Hidden content */

[hidden] {
  display: none;
}

[hidden] + * {
  margin-top: 0 !important;
}

/* For older browsers */
nav,
main,
header,
footer {
  display: block;
}

/* Smooth scrolling */

@media (prefers-reduced-motion: no-preference) {
  :root {
    scroll-behavior: smooth;
  }
}

/* Buttons and links */

:focus {
  outline: var(--border-thin) solid var(--color-mid);
  outline-offset: var(--border-thin);
}

[tabindex='-1']:focus {
  outline: none;
}

button,
.cta {
  font-size: inherit;
  font-weight: bold;
  display: inline-block;
  cursor: pointer;
  font-family: var(--font-special);
  color: var(--color-light);
  background-color: var(--color-dark);
  padding: var(--s-1) var(--s2);
  border-width: var(--border-thin);
}

.cta {
  background-color: transparent;
  color: var(--color-dark);
}

.cta--big {
  display: block;
  font-size: var(--s2);
  text-align: center;
  text-decoration: none;
}

.cta--big span {
  text-decoration: underline;
}

[href='#main'] {
  display: inline-block;
  padding: var(--s-1);
  color: var(--color-light);
  background-color: var(--color-dark);
  position: absolute;
  top: -10rem;
}

[href='#main']:focus {
  position: absolute;
  z-index: 1;
  top: 0;
  outline: none;
}

.docs-block-link {
  display: block;
}

/* Media */

img {
  width: 100%;
}

figure, [role="figure"] {
  text-align: center;
}

figcaption, .figcaption {
  margin-top: var(--s-1);
  font-size: var(--s-1);
}

.docs-icon {
  width: 0.75em;
  height: 0.75em;
  stroke: currentColor;
  stroke-width: 4;
  fill: none;
  text-decoration-skip: objects;
}

/* noscript */

noscript {
  padding: var(--s-1);
  background-color: var(--color-lightish);
}

/* Keyboard styles */

kbd {
  line-height: 1;
  font-size: var(--s-1);
  color: var(--color-light);
  background-color: var(--color-dark);
  padding: 0.125em 0.5em;
  border-radius: 0.125em;
}

/* Tables */

table {
  width: 100%;
  border-collapse: collapse;
}

table code {
  white-space: nowrap;
}

th,
td {
  border-width: var(--border-thin);
  padding: var(--s-1);
  text-align: left;
}

td:first-child {
  font-weight: bold;
}

.docs-props-table {
  overflow-x: auto;
}

.docs-props-table td:last-child {
  font-size: var(--s-1);
}

/* Typography */

h1,
h2,
h3,
h4 {
  line-height: var(--line-height-small);
  font-family: var(--font-special);
  font-weight: 700;
  hyphens: auto;
}

h1,
.h1 {
  font-size: var(--s4);
}
h2,
.h2 {
  font-size: var(--s3);
}
h3,
.h3 {
  font-size: var(--s2);
}
h4,
.h4 {
  font-size: var(--s1);
}

main > ol,
main > ul,
aside > ol,
aside > ul {
  padding-left: 2em;
}

main > * + * {
  margin-top: var(--s3);
}

main p + p,
[class^='docs-note'] p + p {
  margin-top: var(--s-1);
}

hr {
  padding: var(--border-thin) 0 0;
  border-width: var(--border-thin) 0;
}

/* High contrast mode fixes */
button,
pre {
  outline: var(--border-thin) solid transparent;
  outline-offset: calc(var(--border-thin) * -1);
}

.docs-quote > span {
  font-size: 2.5rem;
  font-family: var(--font-special);
  font-weight: bold;
  background-color: var(--color-dark);
  color: var(--color-light);
  box-decoration-break: clone;
  -webkit-box-decoration-break: clone;
  padding: 0.25rem 1ch;
  line-height: var(--line-height);
}

/* Navigation */

.docs-logo svg {
  width: 100%;
}

.docs-nav-toggle {
  font-size: var(--s1);
  margin-top: var(--s1);
  font-weight: bold;
  width: 100%;
  text-align: center;
  display: none;
}

.docs-nav-toggle path {
  transition: d 0.25s;
}

.docs-nav-toggle[aria-expanded='true'] path {
  d: path('M3,3 29,29 M16,16 16,16 M3,29 29,3');
}

@media (max-width: 827px) {
  .with-js .docs-nav-toggle {
    display: block;
  }

  .with-js .docs-nav {
    display: none;
  }

  [aria-expanded='true'] + .docs-nav {
    display: block;
  }
}

.docs-nav {
  text-align: center;
  margin-top: var(--s0);
}

.docs-nav ul {
  list-style: none;
}

.docs-nav li + li {
  margin-top: var(--s-2);
}

.docs-nav h2 {
  font-size: var(--s2);
  text-transform: uppercase;
  line-height: var(--line-height);
}

.docs-nav * + h2 {
  margin-top: var(--s2);
}

.docs-nav * + * {
  margin-top: var(--s-3);
}

.docs-index-link {
  display: block;
  font-size: var(--s-1);
}

.docs-index-link .docs-icon {
  width: 1.25em;
  height: 1.25em;
  vertical-align: -0.25em;
}

.docs-nav a {
  display: inline-block;
  line-height: var(--line-height-small);
  font-weight: 700;
  text-decoration: none;
}

.docs-nav a:not([aria-current='true']):hover {
  text-decoration: underline;
}

.docs-nav [aria-current='true'] {
  position: relative;
  text-indent: -1em; /* compensates for icon */
}

.docs-feed-link {
  font-size: var(--s1);
  font-family: var(--font-special);
  margin-top: var(--s-1);
}

/* Table of contents */

.docs-toc {
  position: relative;
  border-width: var(--s-3);
  font-weight: bold;
}

.docs-toc > [aria-hidden] {
  position: absolute;
  right: 1rem;
  top: -0.75em;
  text-transform: uppercase;
  font-family: var(--font-special);
  padding: 0 0.5rem;
  font-size: var(--s1);
  line-height: var(--line-height-small);
}

.docs-toc ul {
  padding: var(--s1) var(--s3);
  margin: 0;
}

.docs-toc li {
  line-height: var(--line-height-small);
}

.docs-toc li + li {
  margin-top: var(--s-2);
}

.docs-toc a {
  text-decoration: none;
}

.docs-section-header {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
}

.docs-section-header a {
  font-size: 2.25rem;
}

.docs-section-header > :first-child {
  margin-right: var(--s-2);
}

/* Component page layout */

.docs-page {
  display: flex;
  flex-wrap: wrap;
}

.docs-header,
.docs-main {
  padding: var(--s2);
}

.docs-header {
  flex-basis: 15rem;
  flex-grow: 1;
  position: relative;
  outline: var(--border-thin) dashed;
  padding-top: var(--s3);
}

.docs-main {
  flex-basis: 0;
  flex-grow: 999;
  min-width: 66%;
  display: flex;
  flex-direction: column;
  padding-bottom: 0;
}

.docs-main > :last-child {
  margin-top: 0;
}

main > *,
footer {
  display: block;
  margin-left: auto;
  margin-right: auto;
  max-width: 35rem;
}

main > style {
  display: none;
}

script {
  display: none;
}

footer::before {
  content: '\220e';
  display: block;
  padding-bottom: var(--s-1);
}

/* Asides (notes) */

[class^='docs-note'] {
  border-left-width: var(--s0);
  padding-left: var(--s0);
}

[class^='docs-note'] > * + * {
  margin-top: var(--s3);
}

.docs-note--warning {
  border-image: repeating-linear-gradient(-25deg, transparent, transparent 0.333rem, var(--color-dark) 0.333rem, var(--color-dark) 0.666rem) 25;
}

/* Inline demo layout */

.docs-launcher {
  text-align: center;
  margin-top: 0;
}

.docs-launcher::before {
  content: '';
  width: 0;
  display: block;
  margin-left: auto;
  margin-right: auto;
  border-left-width: var(--border-thin);
  height: var(--s2);
}

/* Demo layout */

.docs-demo-page {
  padding: var(--s1);
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.docs-demo-page > h1 {
  text-align: center;
  font-size: var(--s3);
}

.docs-demo-page > h1 + * {
  margin-top: var(--s2);
}

.docs-demo-inline {
  max-width: none;
}

/* forms */

label {
  font-weight: bold;
}

label,
label small {
  display: block;
}

label small {
  font-weight: normal;
  font-style: italic;
}

input,
[type='checkbox'] ~ svg,
.card-container,
textarea {
  box-shadow: inset 0.25rem 0.25rem 0 #ddd;
}

[type='text'],
[type='email'],
.card-container,
textarea {
  width: 100%;
  font-size: inherit;
  border-width: var(--border-thin);
  padding: var(--s-1);
}

[type='checkbox'] ~ svg {
  stroke: transparent;
  border-width: var(--border-thin);
  vertical-align: middle;
  padding: 2px;
  box-sizing: content-box;
}

[type='checkbox']:checked ~ svg {
  stroke: currentColor;
}

[type='checkbox']:focus ~ svg {
  outline: var(--border-thin) solid var(--color-mid);
}

input:focus,
textarea:focus {
  outline-offset: 0;
}

.docs-field label + * {
  margin-top: var(--s-3);
}

form > * + * {
  margin-top: var(--s1);
}

.docs-generator {
  display: flex;
  flex-wrap: wrap;
  border-width: var(--border-thin);
}

.docs-generator[hidden] {
  display: none;
}

.docs-generator > * {
  flex: 1 0 auto;
  flex-basis: 15rem;
}

.docs-generator form {
  padding: var(--s1);
}

.docs-generator output {
  background-color: var(--color-dark);
  overflow-x: auto;
}

.docs-generator pre {
  overflow: hidden;
}

.docs-hl {
  background-color: var(--color-darkish);
  padding: var(--s-5) var(--s-4);
}

.docs-generator__switcher {
  font-family: var(--font-mono);
  color: var(--color-light);
  display: flex;
  text-align: center;
}

.docs-generator__switcher > * {
  flex-basis: 50%;
}

.docs-generator__switcher label > span {
  padding: var(--s-3);
  display: block;
  background-color: var(--color-light);
  color: var(--color-dark);
}

.docs-generator__switcher input:checked + span {
  filter: invert(100%);
}

.docs-generator__switcher input:focus + span {
  outline: var(--border-thin) solid var(--color-mid);
  outline-offset: calc(var(--border-thin) * -1);
}

@keyframes pinch {
  0% {
    transform: translateY(0.5rem);
  }
  25% {
    transform: translateY(-0.5rem);
  }
  50% {
    transform: translateY(0.25rem);
  }
  75% {
    transform: translateY(-0.25rem);
  }
  87.5% {
    transform: rotate(0.125rem);
  }
  100% {
    transform: rotate(0);
  }
}

.docs-output--regenerated code {
  animation: pinch ease-in 0.25s;
}

/* blog */

h1 + .docs-blog-meta {
  font-weight: bold;
  margin-top: var(--s-3);
}

.docs-blog-meta > span {
  white-space: nowrap;
  margin-right: var(--s-3);
}

/* features */

.docs-features {
  list-style: none;
  padding: 0;
  text-align: center;
}

.docs-features img {
  height: 7.5rem;
  width: auto;
  max-width: 100%;
}

/* picture index */

.docs-picture-index [role='listitem'] {
  position: relative;
}

.docs-picture-index a {
  text-decoration: none;
}

.docs-picture-index a h2 {
  text-decoration: underline;
}

.docs-picture-index img {
  max-width: 12rem;
}

.docs-read-now {
  font-weight: bold;
  box-shadow: 0 0 0 var(--border-thin) var(--color-light);
  position: absolute;
  top: 0;
  right: 0;
  transform: rotate(20deg);
  background-color: var(--color-dark);
  color: var(--color-light);
  padding: var(--s-5) var(--s-2);
  line-height: var(--line-height-small);
}

/* Loader element */
.loader {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  padding: var(--s5) var(--s0);
  position: absolute;
  background: hsla(0, 0%, 98%, 0.95);
  font-weight: bold;
  z-index: 1;
}

/* Checkout form */
.checkout-form {
  position: relative;
}
