package salaryfarming.view;
import model.GameState;
import model.CardType;

import coconut.ui.View;
import model.GameModel;

/**
 * ...
 * @author duke
 */
class CardView extends View<{model:GameModel}>
{
	
	function render() '
	
	<div class={"cd-popup " + switch( model.state ) { case GameState.ShowCard(_): "is-visible"; default: ""; }} >
		<switch {model.state}>
	<case {GameState.ShowCard(selectedPlayer, card, cardDone)}>
				<div class="cd-popup-container">
					<p>{selectedPlayer.displayName + ": " + card.description}</p>
					<ul class="cd-buttons">
						<li><a href="#" onclick={cardDone(true)}>Done</a></li>
						<li><a href="#" onclick={cardDone(false)}>Failed</a></li>
					</ul>
					<a href="#" class="cd-popup-close img-replace">Close</a>
				</div>
			<case {_}>
	   </switch>
   </div>
	';
	
}