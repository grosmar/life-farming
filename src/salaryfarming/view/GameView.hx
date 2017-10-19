package salaryfarming.view;

import coconut.ui.View;
import model.GameModel;
import model.GameState;
import model.MainModel;
import model.MainState;
import model.PlayerModel;

/**
 * ...
 * @author duke
 */
class GameView extends View<{model:MainModel}>
{

	function render() '
		<div id="root" class="container">
			<div class="square">
				<switch {model.state}>
					<case {MainState.Setup(setupModel, startGame)}>
						<for {player in setupModel.players}>
							<PlayerView key={player} model={player} max={setupModel.players.length} isSelected={false} />
						</for>
						<PlayerChooserView key={model} model={setupModel} startGame={startGame} />
					<case {MainState.InGame(gameModel)}>
						<for {player in gameModel.players}>
							<PlayerView key={player} model={player} max={gameModel.players.length} isSelected={isSelected(gameModel.state, player)} />
						</for>
						<BottleView key={model} model={gameModel} />
						<ChooseTruthOrDareView key={model} model={gameModel} />
						<CardView key={model} model={gameModel} />
				</switch>
			</div>
		</div>
	';
	
	function isSelected( state:GameState, player:PlayerModel )
	{
		switch (state)
		{
			case GameState.ChooseTruthOrDare(selectedPlayer, _) | GameState.ShowCard(selectedPlayer, _, _):
				return selectedPlayer == player;
			default:
				return false;
		}
	}
	
	
}