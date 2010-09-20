package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#ffffff")]
	[Frame(factoryClass="Preloader")]

	public class ShooterDemo extends FlxGame
	{
		public function ShooterDemo()
		{
			FlxState.bgColor = 0xffffff;
			super(640,480,PlayState,1);
		}
	}
}
