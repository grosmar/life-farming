package salaryfarming.model;
import tink.core.Promise;

/**
 * ...
 * @author duke
 */
class Cards 
{
	public static var TRUTH:Array<String> = [
		"What is your name?",
		"Who are you?"];
		
	public static var DARE:Array<String> = [
		"Show your middle finger!",
		"Tell something nice to everyone!"];

	public static function getRandomCard( type:CardType ):Promise<Card>
	{
		return type == CardType.Truth ? new Card(TRUTH[Math.floor(Math.random() * TRUTH.length)], 1, CardType.Truth) : new Card(DARE[Math.floor(Math.random() * DARE.length)], 2, CardType.Dare);
	}
	
}