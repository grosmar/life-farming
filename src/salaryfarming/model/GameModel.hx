package salaryfarming.model;
import coconut.data.Model;
import haxe.ds.Option;
import model.PlayerModel;
import tink.core.Promise;
import tink.pure.List;

/**
 * ...
 * @author duke
 */
class GameModel implements Model
{
	@:observable var state:GameState = @byDefault GameState.Spin(setSpinTarget);

	@:external var players:List<PlayerModel>;
	
	@:constant var cardProvider:CardType->Promise<Card>;

	@:transition private function setSpinTarget( index:UInt )
	{	
		var player = players.first(function(e) return e.index == index);
		
		switch ( player )
		{
			case Option.Some(v):
				return { state: GameState.ChooseTruthOrDare( v, chooseCard ) };
			case Option.None:
				return { state: GameState.Spin(setSpinTarget) };
		}
	}

	@:transition private function chooseCard( cardType:CardType )
	{
		switch( state )
		{
			case GameState.ChooseTruthOrDare(selectedPlayer, _):
				return cardProvider(cardType).next( 
					function( card ) 
					{ 
						return { state: GameState.ShowCard( selectedPlayer, card, cardDone) };
					});
			default: 
				return {};
		}
		
	}

	@:transition private function cardDone( success:Bool )
	{
		switch ( state )
		{
			case GameState.ShowCard(selectedPlayer, card, _):
				if ( success )
					selectedPlayer.addPoints( card.value );
				else
					selectedPlayer.delPoints( card.value * 2 );
					
				return { state: GameState.Spin(setSpinTarget) };
			default:
				return {};
		}
	}
}