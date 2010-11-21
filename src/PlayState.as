package
{
	import Box2D.Collision.*;
	import Box2D.Collision.Shapes.*;
	import Box2D.Common.Math.*;
	import Box2D.Dynamics.*;
	
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		[Embed(source="data/box.png")] private var ImgCube:Class;
		[Embed(source="data/ball.png")] private var ImgBall:Class;
		public var _world:b2World;
		
		override public function create():void
		{
			FlxG.log(ImgCube);
			this.setupWorld();
			FlxState.bgColor = 0xffacbcd7;
			
			//setup floor
			var floor:B2FlxTileblock = new B2FlxTileblock(0,400,640,80,_world);
			floor.createBody();
			floor.loadGraphic(ImgCube);
			add(floor);
			
			//place a cube
			var cube:B2FlxSprite = new B2FlxSprite(320, 240, 20, 20, _world);
			cube._angle = 140;
			cube.createBody();
			cube.loadGraphic(ImgCube, false,false,20,20);
			add(cube);
			
			//place a circle
			var circle:B2Circle = new B2Circle(320, 200, 10, _world);
			circle.createBody();
			circle.loadGraphic(ImgBall, false,false,20,20);
			add(circle);
			
		}
		
		private function setupWorld():void
		{
			var gravity:b2Vec2 = new b2Vec2(0,9.8);
			_world = new b2World(gravity, true);
		}
		
		override public function update():void
		{
			_world.Step(FlxG.elapsed, 10, 10);
			super.update();
		}
	}
}
