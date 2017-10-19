package salaryfarming.model;

/**
 * @author duke
 */
enum MainState 
{
	Setup(setupModel:SetupModel, startGame:Void->Void);
	InGame(gameModel:GameModel);
}