package ;

import hxdom.Elements;
import hxdom.HtmlSerializer;
import hxdom.polymer.CoreElements;
import hxdom.polymer.PaperElements;

using hxdom.DomTools;

/**
 * Testing for polymer.
 * 
 * @author Sam MacPherson
 */

class Main {
	
	static var app:PolymerApp;
	
	static function main () {
		#if (js && !use_vdom)
		js.Browser.window.onload = function (_) {
			app = cast hxdom.js.Boot.init();
		};
		#else
		sys.io.File.saveContent("index.html", HtmlSerializer.run(new PolymerApp()));
		#end
	}
	
}

class PolymerApp extends EHtml {
	
	public var head(default, null):EHead;
	public var body(default, null):EBody;
	
	public function new () {
		super();
		
		append(head = new EHead());
		append(body = new EBody());
		
		setupHead();
		
		//Add in scaffolding
		append(new ECoreScaffold()
			.append(new ECoreHeaderPanel()
				.setAttr("navigation", true)
				.setAttr("flex", true)
				.setAttr("mode", "seamed")
				.append(new ECoreToolbar().addText("Application").setAttr("style", "background-color: #526E9C; color: #fff;"))
				.append(new ECoreMenu()
					.setAttr("theme", "core-light-theme")
					.append(new ECoreItem().setAttr("icon", "settings").setAttr("label", "item1"))
					.append(new ECoreItem().setAttr("icon", "settings").setAttr("label", "item2"))
				)
			)
			.append(new EDiv().setAttr("tool", true).addText("Title"))
			.append(new EDiv().addClass("content").addText("Main content goes here..."))
		);
	}
	
	function setupHead ():Void {
		head.append(new EScript().setAttr("src", "webcomponents-lite.min.js"));
		head.append(new EScript().setAttr("src", "client.js"));
		head.append(new ELink().setAttr("rel", "import").setAttr("href", "elements.html"));
		head.append(new EStyle().addText("html, body { height: 100%; margin: 0; } body { font-family: sans-serif; } core-scaffold { position: absolute; top: 0; right: 0; bottom: 0; left: 0;} .content { background-color: #fff; height: 5000px; padding: 20px; } core-scaffold[mode=cover]::shadow core-header-panel::shadow #mainContainer { left: 120px; } core-scaffold[mode=cover] .content { margin: 20px 100px 20px 0; }"));
	}
	
}