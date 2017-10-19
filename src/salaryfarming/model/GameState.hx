package salaryfarming.model;
import tink.core.Promise;

/**
 * @author duke
 */
enum GameState 
{
	Spin(choosePlayer:UInt->Void);
	ChooseTruthOrDare(selectedPlayer:PlayerModel, choose:CardType->Void);
	ShowCard(selectedPlayer:PlayerModel, card:Card, cardDone:Bool->Void);
}