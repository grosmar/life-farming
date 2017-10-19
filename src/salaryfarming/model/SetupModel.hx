package salaryfarming.model;
import coconut.data.Model;
import model.PlayerModel;
import tink.pure.List;

/**
 * ...
 * @author duke
 */
class SetupModel implements Model
{
	@:observable var players:List<PlayerModel> = @byDefault  [
				PlayerModel.create(0),
				PlayerModel.create(1),
				PlayerModel.create(2),
			];

	@:transition function addPlayer( )
	{
		return { players: players.length >= 12 ? this.players : this.players.prepend( PlayerModel.create( players.length ) ) };
	}

	@:transition function removePlayer( )
	{
		return { players: players.length <= 3 ? this.players : this.players.filter( i => i.index < players.length - 1 ) };
	}
}