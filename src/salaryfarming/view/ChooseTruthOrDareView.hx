package salaryfarming.view;
import js.Browser;
import js.html.DivElement;
import js.html.Element;
import js.html.HtmlElement;
import js.html.MouseEvent;
import model.GameState;
import model.CardType;

import coconut.ui.View;
import model.GameModel;

/**
 * ...
 * @author duke
 */
class ChooseTruthOrDareView extends View<{model:GameModel}>
{

	function render() '
	<div id="chooseTruthOrDare" class={"cd-popup " + switch( model.state ) { case GameState.ChooseTruthOrDare(_): "is-visible"; default: ""; } } >
		<switch {model.state}>
			<case {GameState.ChooseTruthOrDare(selectedPlayer, choose)}>
				<div class="cd-popup-container">
					<p>{selectedPlayer.displayName + ": wanna tell the truth or brave enough to dare?"}</p>
					<ul class="cd-buttons">
						<li><a href="#" onclick={choose(CardType.Truth)}>Truth</a></li>
						<li><a href="#" onclick={choose(CardType.Dare)}>Dare</a></li>
					</ul>
					<a href="#" class="cd-popup-close img-replace">Close</a>
				</div>
			<case {_}>
		</switch>
   </div>
	';
	
}