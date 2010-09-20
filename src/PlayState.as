package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		protected var _gun:Gun;
		protected var _bullets:BulletGroup;
		override public function create():void
		{
			FlxState.bgColor = 0xffffff;
			var txt:FlxText = new FlxText(0, 0, 100, "ARROW KEYS AND SPACEBAR");
			txt.color = 0x000000;
			add(txt);
			_gun = new Gun(FlxG.width / 2, FlxG.height / 2);
			_bullets = new BulletGroup(_gun);
			add(_bullets);
			add(_gun);
		}
		
		override public function update():void {
			_gun.update();
			_bullets.update();
		}
		
		
	}
}
