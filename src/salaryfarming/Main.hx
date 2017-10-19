package salaryfarming;

import coconut.Ui.hxx;
import js.Browser;
import salaryfarming.model.GameModel;
import salaryfarming.view.GameView;
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
		var gameModel = new GameModel();
		
		var root = hxx('<GameView model={gameModel} />');
		
		Browser.document.body.appendChild( root.toElement() );
	}

}