package salaryfarming.model;
import coconut.data.Model;

/**
 * ...
 * @author duke
 */
class PlayerModel implements Model
{
	@:editable var name:String = @byDefault "";
	@:computed var displayName:String = name != null && name != "" ? name : "Player " + (index + 1);
	@:editable var index:UInt;
	@:observable var points:Int = @byDefault 0;
	
	static public function create( index:UInt )
	{
		return new PlayerModel({ index: index });
	}
	
	@:transition function addPoints( points:UInt )
	{
		return {points: this.points + points};
	}
	
	@:transition function delPoints( points:UInt )
	{
		return {points: this.points - points};
	}
	
}