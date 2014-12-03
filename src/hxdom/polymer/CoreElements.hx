package hxdom.polymer;

import hxdom.Elements;
import hxdom.html.Element;
import hxdom.html.InputElement;
import hxdom.html.Node;

using hxdom.DomTools;

/**
 * Polymer core elements.
 * 
 * @see https://www.polymer-project.org/docs/elements/core-elements.html
 * @author Sam MacPherson
 */
class ECoreAnimatedPages extends ECoreSelector {
	public function new (?tag = "CORE-ANIMATED-PAGES") { super(tag); }
}
class ECoreAnimationGroup extends VirtualElement<Element> {
	public var target(get, set):Dynamic;
	function get_target ():Dynamic {
		var val = untyped node.target;
		return if (Std.is(val, Array)) {
			cast(val, Array<Dynamic>).map(function (e) { return DomTools.vnode(e); } );
		} else {
			DomTools.vnode(val);
		}
	}
	function set_target (val:Dynamic):Dynamic {
		untyped node.target = if (Std.is(val, Array)) {
			cast(val, Array<Dynamic>).map(function (e) { return e.node; } );
		} else {
			val.node;
		}
		return val;
	}
	public var duration(get, set):Float;
	function get_duration ():Float {
		return untyped node.duration;
	}
	function set_duration (val:Float):Float {
		return untyped node.duration = val;
	}
	public var type(get, set):String;
	function get_type ():String {
		return untyped node.type;
	}
	function set_type (val:String):String {
		return untyped node.type = val;
	}
	public function new (?tag = "CORE-ANIMATION-GROUP") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreAnimation extends VirtualElement<Element> {
	public var target(get, set):Dynamic;
	function get_target ():Dynamic {
		var val = untyped node.target;
		return if (Std.is(val, Array)) {
			cast(val, Array<Dynamic>).map(function (e) { return DomTools.vnode(e); } );
		} else {
			DomTools.vnode(val);
		}
	}
	function set_target (val:Dynamic):Dynamic {
		untyped node.target = if (Std.is(val, Array)) {
			cast(val, Array<Dynamic>).map(function (e) { return e.node; } );
		} else {
			val.node;
		}
		return val;
	}
	public var keyframes(get, set):Dynamic;
	function get_keyframes ():Dynamic {
		return untyped node.type;
	}
	function set_keyframes (val:Dynamic):Dynamic {
		return untyped node.type = val;
	}
	public var composite(get, set):String;
	function get_composite ():String {
		return untyped node.type;
	}
	function set_composite (val:String):String {
		return untyped node.type = val;
	}
	public var duration(get, set):Dynamic;
	function get_duration ():Dynamic {
		return untyped node.duration;
	}
	function set_duration (val:Dynamic):Dynamic {
		return untyped node.duration = val;
	}
	public var fill(get, set):String;
	function get_fill ():String {
		return untyped node.type;
	}
	function set_fill (val:String):String {
		return untyped node.type = val;
	}
	public var delay(get, set):Float;
	function get_delay ():Float {
		return untyped node.type;
	}
	function set_delay (val:Float):Float {
		return untyped node.type = val;
	}
	public var endDelay(get, set):Float;
	function get_endDelay ():Float {
		return untyped node.type;
	}
	function set_endDelay (val:Float):Float {
		return untyped node.type = val;
	}
	public var iterations(get, set):Dynamic;
	function get_iterations ():Dynamic {
		return untyped node.duration;
	}
	function set_iterations (val:Dynamic):Dynamic {
		return untyped node.duration = val;
	}
	public var iterationStart(get, set):Float;
	function get_iterationStart ():Float {
		return untyped node.type;
	}
	function set_iterationStart (val:Float):Float {
		return untyped node.type = val;
	}
	public var iterationComposite(get, set):String;
	function get_iterationComposite ():String {
		return untyped node.type;
	}
	function set_iterationComposite (val:String):String {
		return untyped node.type = val;
	}
	public var direction(get, set):String;
	function get_direction ():String {
		return untyped node.type;
	}
	function set_direction (val:String):String {
		return untyped node.type = val;
	}
	public var playbackRate(get, set):Float;
	function get_playbackRate ():Float {
		return untyped node.type;
	}
	function set_playbackRate (val:Float):Float {
		return untyped node.type = val;
	}
	public var autoplay(get, set):Bool;
	function get_autoplay ():Bool {
		return untyped node.type;
	}
	function set_autoplay (val:Bool):Bool {
		return untyped node.type = val;
	}
	public function new (?tag = "CORE-ANIMATION-GROUP") { super(VirtualNode.buildElement(Element, tag)); }
	public function play ():Void { untyped node.play(); }
	public function cancel ():Void { untyped node.cancel(); }
	public function finish ():Void { untyped node.finish(); }
	public function pause ():Void { untyped node.pause(); }
	public function hasTarget ():Bool { return untyped node.hasTarget(); }
	public function apply ():Void { untyped node.apply(); }
}
class ECoreSelector extends VirtualElement<Element> {
	public var items(get, null):Array<VirtualElement<Dynamic>>;
	function get_items ():Array<VirtualElement<Dynamic>> {
		return cast(untyped node.items, Array<Dynamic>).map(function (e) { return cast DomTools.vnode(e); } );
	}
	public function new (?tag = "CORE-SELECTOR") { super(VirtualNode.buildElement(Element, tag)); }
	public function selectPrevious (wrapped:Bool):Void { untyped node.selectPrevious(wrapped); }
	public function selectNext (wrapped:Bool):Void { untyped node.selectNext(wrapped); }
}
class ECoreMeta extends VirtualElement<Element> {
	public var list(get, null):Array<ECoreMeta>;
	function get_list ():Array<ECoreMeta> {
		return cast(untyped node.items, Array<Dynamic>).map(function (e) { return cast DomTools.vnode(e); } );
	}
	public function new (?tag = "CORE-META") { super(VirtualNode.buildElement(Element, tag)); }
	public function byId (id:String):ECoreMeta { return untyped node.byId(id); }
}
class ECoreTransition extends ECoreMeta {
	public function new (?tag = "CORE-TRANSITION") { super(tag); }
	public function go (target:VirtualElement<Dynamic>, state:Dynamic):Void { return untyped node.go(target.node, state); }
	public function setup (target:VirtualElement<Dynamic>):Void { return untyped node.setup(target.node); }
	public function teardown (target:VirtualElement<Dynamic>):Void { return untyped node.teardown(target.node); }
}
class ECoreTransitionCss extends VirtualElement<Element> {
	public function new (?tag = "CORE-TRANSITION-CSS") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreTransitionPages extends ECoreTransition {
	public function new (?tag = "CORE-TRANSITION-PAGES") { super(tag); }
}
class ECoreCollapse extends VirtualElement<Element> {
	public function new (?tag = "CORE-COLLAPSE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreDragDrop extends VirtualElement<Element> {
	public function new (?tag = "CORE-DRAG-DROP") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreDrawerPanel extends VirtualElement<Element> {
	public function new (?tag = "CORE-DRAWER-PANEL") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreDropdownBase extends VirtualElement<Element> {
	public function new (?tag = "CORE-DROPDOWN-BASE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreDropdown extends ECoreOverlay {
	public function new (?tag = "CORE-DROPDOWN") { super(tag); }
}
class ECoreDropdownMenu extends ECoreDropdownBase {
	public function new (?tag = "CORE-DROPDOWN-MENU") { super(tag); }
}
class ECoreField extends VirtualElement<Element> {
	public function new (?tag = "CORE-FIELD") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreFocusable extends VirtualElement<Element> {
	public function new (?tag = "CORE-FOCUSABLE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreHeaderPanel extends VirtualElement<Element> {
	public function new (?tag = "CORE-HEADER-PANEL") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreIcon extends VirtualElement<Element> {
	public function new (?tag = "CORE-ICON") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreIconButton extends VirtualElement<Element> {
	public function new (?tag = "CORE-ICON-BUTTON") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreIconset extends ECoreMeta {
	public function new (?tag = "CORE-ICONSET") { super(tag); }
}
class ECoreIconsetSvg extends ECoreMeta {
	public function new (?tag = "CORE-ICONSET-SVG") { super(tag); }
}
class ECoreImage extends VirtualElement<Element> {
	public function new (?tag = "CORE-IMAGE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreInput extends VirtualElement<InputElement> {
	public function new (?tag = "CORE-INPUT") { super(VirtualNode.buildElement(InputElement, tag)); }
}
class ECoreItem extends VirtualElement<Element> {
	public function new (?tag = "CORE-ITEM") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreLabel extends VirtualElement<Element> {
	public function new (?tag = "CORE-LABEL") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreList extends VirtualElement<Element> {
	public function new (?tag = "CORE-LIST") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreLocalstorage extends VirtualElement<Element> {
	public function new (?tag = "CORE-LOCALSTORAGE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreMediaQuery extends VirtualElement<Element> {
	public function new (?tag = "CORE-MEDIA-QUERY") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreMenu extends ECoreSelector {
	public function new (?tag = "CORE-MENU") { super(tag); }
}
class ECoreSubmenu extends ECoreItem {
	public function new (?tag = "CORE-SUBMENU") { super(tag); }
}
class ECoreMenuButton extends ECoreDropdownBase {
	public function new (?tag = "CORE-MENU-BUTTON") { super(tag); }
}
class ECoreOverlay extends VirtualElement<Element> {
	public function new (?tag = "CORE-OVERLAY") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECorePages extends ECoreSelector {
	public function new (?tag = "CORE-PAGES") { super(tag); }
}
class ECoreRange extends VirtualElement<Element> {
	public function new (?tag = "CORE-RANGE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreScaffold extends VirtualElement<Element> {
	public function new (?tag = "CORE-SCAFFOLD") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreScrollHeaderPanel extends VirtualElement<Element> {
	public function new (?tag = "CORE-SCROLL-HEADER-PANEL") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreScrollThreshold extends VirtualElement<Element> {
	public function new (?tag = "CORE-SCROLL-THESHOLD") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreSelection extends VirtualElement<Element> {
	public function new (?tag = "CORE-SELECTION") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreSharedLib extends VirtualElement<Element> {
	public function new (?tag = "CORE-SHARED-LIB") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreSignals extends VirtualElement<Element> {
	public function new (?tag = "CORE-SIGNALS") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreSplitter extends VirtualElement<Element> {
	public function new (?tag = "CORE-SPLITTER") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreStyle extends VirtualElement<Element> {
	public function new (?tag = "CORE-STYLE") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreToolbar extends VirtualElement<Element> {
	public function new (?tag = "CORE-TOOLBAR") { super(VirtualNode.buildElement(Element, tag)); }
}
class ECoreTooltip extends ECoreFocusable {
	public function new (?tag = "CORE-TOOLTIP") { super(tag); }
}