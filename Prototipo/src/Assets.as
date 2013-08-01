package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	public class Assets
	{
		[Embed(source="../media/graphics/bgWelcome.jpg")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media/graphics/background.jpg")]
		public static const BgMain:Class;
		
		[Embed(source="../media/graphics/grass.png")]
		public static const BgLayer1:Class;
		
		[Embed(source="../media/graphics/plants01.png")]		
		public static const BgLayer2:Class;
		
		[Embed(source="../media/graphics/plants02.png")]
		public static const BgLayer3:Class;
		
		[Embed(source="../media/graphics/grass.png")]
		public static const BgLayer4:Class;
		
		[Embed(source="../media/graphics/pos002.png")]
		public static const Pos002:Class;
		
		[Embed(source="../media/graphics/pos003.png")]
		public static const Pos003:Class;
		
		[Embed(source="../media/graphics/pos004.png")]
		public static const Pos004:Class;
		
		[Embed(source="../media/graphics/pos005.png")]
		public static const Pos005:Class;
		
		[Embed(source="../media/graphics/pos006.png")]
		public static const Pos006:Class;
		
		[Embed(source="../media/graphics/pos007.png")]
		public static const Pos007:Class;
		
		[Embed(source="../media/graphics/pos008.png")]
		public static const Pos008:Class;
		
		[Embed(source="../media/graphics/pos009.png")]
		public static const Pos009:Class;
		
		
		private static var gameTextures:Dictionary = new Dictionary();
		private static var gameTextureAtlas:TextureAtlas;
		
		[Embed(source="../media/graphics/mySpritesheet.png")]
		public static const AtlasTextureGame:Class;
		
		[Embed(source="../media/graphics/mySpritesheet.xml", mimeType="application/octet-stream")]
		public static const AtlasXmlGame:Class;
		
		public static function getAtlas():TextureAtlas
		{
			if (gameTextureAtlas == null)
			{
				var texture:Texture = getTexture("AtlasTextureGame");
				var xml:XML = XML(new AtlasXmlGame());
				gameTextureAtlas = new TextureAtlas(texture, xml);
			}
			return gameTextureAtlas;
		}

		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
	}
}