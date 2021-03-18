// start - apply automatic columns when there is at least 600 characters
// frankfarm - this was an experiment to see if i could automatically set multicolumns based on the length of the content. it does not work because not everything is large blocks of headings and text. tabled for now.
/*
var items = document.querySelectorAll('.field');
for (var i = 0; i < items.length; i++) {
  var item_length = items[i].textContent.replace(/\s/g,'').length;
  if (
    ( ! items[i].classList.contains('laurel-no-columns') )
    && ( item_length >= 600 )
  ){
    items[i].classList.add('columns','auto','length-' + item_length);
  }
}
*/
// end - apply automatic columns when there is at least 600 characters

// jQuery(document).ready(function($) {
  // put jquery stuff here
// })(jQuery);

// start - https://every-layout.dev/layouts/grid/
// frankfarm: i'm not sure we need this
/*
function observeGrid(gridNode) {
  // Feature detect ResizeObserver
  if ('ResizeObserver' in window) {
    // Get the min value from data-min="[min]"
    const min = gridNode.dataset.min;
    // Create a proxy element to measure and convert
    // the `min` value (which might be em, rem, etc) to `px`
    const test = document.createElement('div');
    test.style.width = min;
    gridNode.appendChild(test);
    const minToPixels = test.offsetWidth;
    gridNode.removeChild(test);

    const ro = new ResizeObserver(entries => {
      for (let entry of entries) {
        // Get the element's current dimensions
        const cr = entry.contentRect;
        // `true` if the container is wider than the minimum
        const isWide = cr.width > minToPixels;
        // toggle the class conditionally
        gridNode.classList.toggle('aboveMin', isWide);
      }
    });

    ro.observe(gridNode);
  }
}
*/
// end - https://every-layout.dev/layouts/grid/
