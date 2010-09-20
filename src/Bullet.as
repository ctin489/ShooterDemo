package  
{
	/**
	 * ...
	 * @author David Elliott
	 */
	import org.flixel.*;
	
	public class Bullet extends FlxSprite
	{
		public static const SPEED:Number = 400
		public function Bullet(X:int,Y:int) 
		{
			super(X, Y);
			createGraphic(2, 2, 0xffaa1111);
		}
		
		
		public function setVelocity(Dir:Number):void
		{
			velocity.x = (Math.cos((Dir - 90) * (Math.PI / 180))) * SPEED;
			velocity.y = (Math.sin((Dir - 90) * (Math.PI / 180))) * SPEED;
		}
		
	}

}