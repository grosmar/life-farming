package salaryfarming.view;

import coconut.ui.View;
import model.GameModel;
import model.SetupModel;

/**
 * ...
 * @author duke
 */
class PlayerChooserView extends View<{model:SetupModel, startGame:Void->Void}>
{

	function render() '
		<div>
			<img src="remove.png" class="button" onclick={model.removePlayer()} />
			<img src="add.png" 	  class="button" onclick={model.addPlayer()} />
			<img src="arrow.png"  class="button" onclick={startGame()} />
		</div>
	';
	
}