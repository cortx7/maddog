package objects
{
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	
	public class Hero extends Sprite
	{
		private var heroArt:MovieClip;
		
		public function Hero()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			createHeroArt();
		}
		
		private function createHeroArt():void
		{
			var textures:Vector.<Texture> = new Vector.<Texture>();
			
			for(var i:int = 2; i < 10; i++)
			{
				textures.push(Assets.getTexture("Pos00" + i));		
			}
						
			heroArt = new MovieClip(textures);
			heroArt.x = Math.ceil(-heroArt.width/2);
			heroArt.y = Math.ceil(-heroArt.height/2);
			starling.core.Starling.juggler.add(heroArt);
			this.addChild(heroArt);
		}
	}
}