package  
{
	/**
	 * ...
	 * @author David Elliott
	 */
	import org.flixel.*;
	public class BulletGroup extends FlxGroup
	{
		public var spawn:FlxPoint;
		public var _gun:Gun;
		public function BulletGroup(G:Gun) 
		{
			_gun = G;
			
			spawn = new FlxPoint((_gun.x+_gun.width/2)-1, _gun.y+_gun.height/2);
			super();
		}
		
		override public function update():void
		{
			super.update();
			checkOnScreen();
			
			if (FlxG.keys.justPressed("SPACE"))
			{
				var tmp:Bullet = getFirstAvail() as Bullet;
				if (tmp)
				{
					tmp.x = spawn.x;
					tmp.y = spawn.y;
					tmp.exists = true;
					tmp.setVelocity(_gun.angle);
				}
				else
				{
					tmp = createBullet();
					tmp.setVelocity(_gun.angle);
					add(tmp);
				}
			}
		}
		
		/**
		 * Internal function that checks all members to see if their on screen.
		 * Sets their exists to false if not
		 */
		protected function checkOnScreen():void
		{
			var i:uint = 0;
			var o:FlxObject;
			var ml:uint = members.length;
			while(i < ml)
			{
				o = members[i++] as FlxObject;
				if(!o.onScreen())
					o.exists = false;
			}
		}
			
		private function createBullet():Bullet
		{
			return new Bullet(spawn.x, spawn.y);
		}

	}

}