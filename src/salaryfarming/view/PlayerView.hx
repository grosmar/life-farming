package salaryfarming.view;
import coconut.ui.View;
import model.PlayerModel;

/**
 * ...
 * @author duke
 */
class PlayerView extends View< {model:PlayerModel, max:UInt, isSelected:Bool }>
{
	@:state var isEditing:Bool = false;


	function render() '
		<div class={"user" + (isSelected ? " user_selected" : "")} style={"left: " + Math.round(45 - 43 * Math.cos((90 + model.index * 360 / max) * 0.0174532925)) + "%; top: " + Math.round(45 - 43 * Math.sin((90 + model.index*360/max)*0.0174532925)) + "%;"}>
			<img src="user.png" class="user" style={"filter: brightness(30%) sepia(100%) hue-rotate(-" + (model.index/max*360) +  "deg) saturate(600%)"} />
			<if {isEditing}>
				<input class="name" type="text" value={model.displayName} onchange={model.name = event.target.value} onblur={isEditing = false} />
			<else>
				<span class="name" ondblclick={this.isEditing = true}>{model.displayName}</span>
			</if>
			<span class="points">{model.points}</span>
		</div>
	';
}