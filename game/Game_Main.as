package game {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class Game_Main extends MovieClip {
		
		//サイコロの生成
		private var dice:Dice_Anime = new Dice_Anime();
		//乱数の格納
		private var randomNumber:int;
		
		public function Game_Main() {
			// constructor code
			
			//初期化
			init();
			
			//サイコロボタン
			testButton_saikoro.addEventListener(MouseEvent.MOUSE_UP, diceStart_MOUSE_UP_Handler);
		}
		
		//初期化
		private function init():void
		{
			dice.x = 700;
			dice.y = 100;
			//ダイスの表示
			addChild(dice);
		}
		
		//乱数の生成
		private function randomNumberCreate():void
		{
			randomNumber = Math.random() * 6 + 1 << 0;
		}
		
		//押されたら
		private function diceStart_MOUSE_UP_Handler(e:MouseEvent):void 
		{
			//乱数の作成
			randomNumberCreate();
			//ダイス内の監視を起動
			dice.Init();
			//表示させるべき数字をダイスに送っておく
			dice.stopDiceNumber(randomNumber);
			//ダイスを振る
			dice.gotoAndPlay("shake");
		}
		
		
	}
	
}
