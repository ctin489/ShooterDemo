package  
{
	/**
	 * ...
	 * @author David Elliott
	 */
	import org.flixel.*;
	
	public class Gun extends FlxSprite
	{
		[Embed(source = 'data/gun.png')] private var GunImg:Class;
				
		public function Gun(X:int, Y:int) 
		{
			super(X-15, Y-15);
			antialiasing = true;
			loadGraphic(GunImg, true, false, 30, 30);
			addAnimation("idle", [0]);
			addAnimation("shoot", [1, 2, 0], 30, false);	
			
		}
		
		override public function update():void
		{
			
			super.update();
			if(FlxG.keys.LEFT) angle-=5;
			if (FlxG.keys.RIGHT) angle += 5;
			if (FlxG.keys.justPressed("SPACE")) play("shoot");
		}
		
	}

}