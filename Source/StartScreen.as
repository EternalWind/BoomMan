package 
{
    import flash.display.MovieClip;
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import BoomMan;
    import State;

    public class StartScreen extends State
    {
        private var btnStart : MovieClip;

        public function StartScreen(game : BoomMan)
        {
            super(game);

            //Todo: Instantiate the buttons here.
            btnStart.buttonMode = true;
            btnStart.useHandCursor = true;
            btnStart.addEventListener(MouseEvent.CLICK, _OnStart);
        }

        public function Load() : void
        {
            //Todo: Load the stuff here.
        }

        public function Unload() : void
        {
            //Todo: Unload the stuff here.
        }

        private function _OnStart(event : MouseEvent) : void
        {
            root.LoadBattleScreen();
        }
    }
}
