package salaryfarming.model;
import coconut.data.List;
import coconut.data.Model;

/**
 * ...
 * @author duke
 */
class MainModel implements Model
{

	@:observable var state:MainState = @byDefault MainState.Setup(new SetupModel({}), startGame);

	@:transition private function startGame()
	{
		switch ( state )
		{
			case MainState.Setup(setupModel, _): return {state: MainState.InGame( new GameModel( {players: setupModel.players, cardProvider: Cards.getRandomCard} ) )};
			default: return {};
		}

	}
}