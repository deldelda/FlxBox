package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class FlxBox extends FlxGame
	{
		public function FlxBox()
		{
			super(640,480,MenuState,1);
		}
	}
}
