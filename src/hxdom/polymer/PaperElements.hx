package hxdom.polymer;

import hxdom.Elements;
import hxdom.html.Element;
import hxdom.html.Node;
import hxdom.polymer.CoreElements;

using hxdom.DomTools;

/**
 * Polymer paper elements.
 * 
 * @see https://www.polymer-project.org/docs/elements/paper-elements.html
 * @author Sam MacPherson
 */
class EPaperButtonBase extends VirtualElement<Element> {
	public function new (?tag = "PAPER-BUTTON-BASE") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperButton extends EPaperButtonBase {
	public function new (?tag = "PAPER-BUTTON") { super(tag); }
}
class EPaperCheckbox extends EPaperRadioButton {
	public function new (?tag = "PAPER-CHECKBOX") { super(tag); }
}
class EPaperActionDialog extends EPaperDialogBase {
	public function new (?tag = "PAPER-ACTION-DIALOG") { super(tag); }
}
class EPaperDialogBase extends ECoreOverlay {
	public function new (?tag = "PAPER-DIALOG-BASE") { super(tag); }
}
class EPaperDialogTransition extends VirtualElement<Element> {
	public function new (?tag = "PAPER-DIALOG-TRANSITION") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperDialog extends EPaperDialogBase {
	public function new (?tag = "PAPER-DIALOG") { super(tag); }
}
class EPaperDropdownTransition extends ECoreTransitionCss {
	public function new (?tag = "PAPER-DIALOG") { super(tag); }
}
class EPaperDropdown extends ECoreDropdown {
	public function new (?tag = "PAPER-DROPDOWN") { super(tag); }
}
class EPaperDropdownMenu extends ECoreDropdownBase {
	public function new (?tag = "PAPER-DROPDOWN-MENU") { super(tag); }
}
class EPaperFab extends EPaperButtonBase {
	public function new (?tag = "PAPER-FAB") { super(tag); }
}
class EPaperFocusable extends VirtualElement<Element> {
	public function new (?tag = "PAPER-FOCUSABLE") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperIconButton extends EPaperButtonBase {
	public function new (?tag = "PAPER-ICON-BUTTON") { super(tag); }
}
class EPaperAutogrowTextarea extends VirtualElement<Element> {
	public function new (?tag = "PAPER-AUTOGROW-TEXTAREA") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperInputDecorator extends VirtualElement<Element> {
	public function new (?tag = "PAPER-INPUT-DECORATOR") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperInput extends VirtualElement<Element> {
	public function new (?tag = "PAPER-INPUT") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperItem extends EPaperButtonBase {
	public function new (?tag = "PAPER-ITEM") { super(tag); }
}
class EPaperMenuButton extends ECoreDropdownBase {
	public function new (?tag = "PAPER-MENU-BUTTON") { super(tag); }
}
class EPaperProgress extends ECoreRange {
	public function new (?tag = "PAPER-PROGRESS") { super(tag); }
}
class EPaperRadioButton extends VirtualElement<Element> {
	public function new (?tag = "PAPER-RADIO-BUTTON") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperRadioGroup extends ECoreSelector {
	public function new (?tag = "PAPER-RADIO-GROUP") { super(tag); }
}
class EPaperRipple extends VirtualElement<Element> {
	public function new (?tag = "PAPER-RIPPLE") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperShadow extends VirtualElement<Element> {
	public function new (?tag = "PAPER-SHADOW") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperSlider extends ECoreRange {
	public function new (?tag = "PAPER-SLIDER") { super(tag); }
}
class EPaperSpinner extends VirtualElement<Element> {
	public function new (?tag = "PAPER-SPINNER") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperTab extends VirtualElement<Element> {
	public function new (?tag = "PAPER-TAB") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperTabs extends ECoreSelector {
	public function new (?tag = "PAPER-TABS") { super(tag); }
}
class EPaperToast extends VirtualElement<Element> {
	public function new (?tag = "PAPER-TOAST") { super(VirtualNode.buildElement(Element, tag)); }
}
class EPaperToggleButton extends VirtualElement<Element> {
	public function new (?tag = "PAPER-TOGGLE-BUTTON") { super(VirtualNode.buildElement(Element, tag)); }
}