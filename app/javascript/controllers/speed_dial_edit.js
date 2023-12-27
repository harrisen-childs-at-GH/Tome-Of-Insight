import { Dial } from 'flowbite';

/*
 * $parentEl: required
 * $targetEl: required
 * $triggerEl: required
 * options: optional
 * instanceOptions: optional
 */
const dial = new Dial($parentEl, $triggerEl, $targetEl, options, instanceOptions);
// parent element wrapping the speed dial
const $parentEl = document.getElementById('dialParent');

// the trigger element that can be clicked or hovered
const $triggerEl = document.getElementById('dialButton');

// the content wrapping element of menu items or buttons
const $targetEl = document.getElementById('dialContent');
// options with default values
const options = {
    triggerType: 'click',
    onHide: () => {
        console.log('speed dial is shown');
    },
    onShow: () => {
        console.log('speed dial is hidden');
    },
    onToggle: () => {
        console.log('speed dial is toggled');
    },
};

// instance options with default values
const instanceOptions = {
  id: 'dialContent',
  override: true
};
function showDial() {
    dial.show();
}
document.getElementById('dialButton').onclick = function() {
    console.log("clicked");
    showDial();
};