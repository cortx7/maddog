package
{
	import flash.display.Sprite;
	
	import starling.core.Starling;
	
	[SWF(frameRate="60", width="800", height="450", backgroundColor="0x000000")]
	public class Prototipo extends Sprite
	{
		//private var stats:Stats;
		private var myStarling:Starling;
		
		public function Prototipo()
		{
			super();
			
			myStarling = new Starling(Game, stage);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}