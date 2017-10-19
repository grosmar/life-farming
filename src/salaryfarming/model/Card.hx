package salaryfarming.model;

/**
 * ...
 * @author duke
 */
@:pure
class Card 
{
	public var description(get, null):String;
	public var value(get, null):UInt;
	public var type(get, null):CardType;

	public function new(description:String, value:UInt, type:CardType) 
	{
		this.type = type;
		this.value = value;
		this.description = description;
		
	}
	
	public function get_description():String 
	{
		return description;
	}
	
	public function get_value():UInt 
	{
		return value;
	}
	
	public function get_type():CardType 
	{
		return type;
	}
	
}