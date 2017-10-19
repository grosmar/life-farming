package;

import js.Browser;
import salaryfarming.model.MainModel;
import vdom.VDom.*;
import view.*;
import coconut.Ui.hxx;

/**
 * ...
 * @author duke
 */
class Main
{

	static function main()
	{
		new Main();
	}

	public function new()
	{
		//var gameModel = new GameModel();
		
		var mainModel = new MainModel();
		
		//var root = hxx('<GameView model={mainModel} />');
		
		var root = hxx('<div id="root" class="container">
			<div class="square"><BottleView /></div></div>');
		Browser.document.body.appendChild( root.toElement() );
	}

}